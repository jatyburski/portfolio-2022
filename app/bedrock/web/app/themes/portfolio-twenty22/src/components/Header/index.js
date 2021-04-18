import React from 'react'
import { 
  HeaderContainer, 
  IconContainer, 
  IconItem, 
  Nav, 
  NavContainer, 
  NavItem, 
  NavItemContainer, 
  NavLogo 
} from './HeaderElements'
import { Link, graphql, useStaticQuery } from "gatsby"
import ExternalLink from '../Global/ExternalLink'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

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

	return (
		<>
			<HeaderContainer>
				<Nav>
					<NavContainer>

						<NavLogo to="/">{title}</NavLogo>

            <NavItemContainer>
              {menu.map(item => {
                return (
                  <NavItem key={item.label}>
                    <Link to={item.path}>{item.label}</Link>
                  </NavItem>
                )
              })}
            </NavItemContainer>

            <IconContainer>
              {icons.map(item => {
                return (
                  <IconItem key={item.icons}>
                
                    <ExternalLink to={item.link.url} title={item.icons}>
                      <FontAwesomeIcon icon={['fab', item.icons]} size="4x" />
                    </ExternalLink>

                  </IconItem>
                )
              })}
            </IconContainer>
            
					</NavContainer>
				</Nav>
			</HeaderContainer>
		</>
	)
}

export default Header;