import React from 'react'
import { Link, graphql, useStaticQuery } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { gsap } from "gsap";

import { 
  Container, 
  IconContainer, 
  IconItem, 
  Nav, 
  NavItem, 
  NavItemContainer, 
  NavLogo 
} from './HeaderElements'

import ExternalLink from '../Global/ExternalLink'

const query = graphql`{
  allWp {
    nodes {
      themeOptions {
        socialIcons {
          socialmedia {
            icons
            link {
              title
              url
            }
          }
        }
      }
      generalSettings {
        title
      }
    }
  }
  allWpMenu {
    edges {
      node {
        menuItems {
          nodes {
            label
            path
            id
          }
        }
      }
    }
  }
}`

const Header = () => {

const data = useStaticQuery(query)
const title = data.allWp.nodes[0].generalSettings.title
const icons = data.allWp.nodes[0].themeOptions.socialIcons.socialmedia
const menu = data.allWpMenu.edges[0].node.menuItems.nodes

gsap.from('.test', {opacity: 0, duration: 1, y: -50})

	return (
		<>
			<Container>
				<Nav>

          <NavLogo to="/">{title}</NavLogo>

          <NavItemContainer>
            {menu.map(item => {
              return (
                <NavItem key={item.id}>
                  <Link to={item.path}>{item.label}</Link>
                </NavItem>
              )
            })}
          </NavItemContainer>

          <IconContainer>
            {icons.map((item, index) => {
              return (
                <IconItem key={index}>
              
                  <ExternalLink to={item.link.url} title={item.link.title}>
                    <span className="sr-only">{item.link.title}</span>
                    <FontAwesomeIcon icon={['fab', item.icons]} size="4x" />
                  </ExternalLink>

                </IconItem>
              )
            })}
          </IconContainer>
            
				</Nav>
			</Container>
		</>
	)
}

export default Header;