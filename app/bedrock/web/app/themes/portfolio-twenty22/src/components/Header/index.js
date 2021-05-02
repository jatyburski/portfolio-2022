import React from 'react'
// import { Link } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { 
  Container, 
  IconContainer, 
  IconItem, 
  Nav, 
  // NavItem, 
  // NavItemContainer, 
  // NavLogo 
} from './HeaderElements'
import ExternalLink from '../Global/ExternalLink'
// import { useGeneralSettings } from '../../hooks/useGeneralSettings'
// import { useNavigation } from '../../hooks/useNavigation'
import { useThemeOptions } from '../../hooks/useThemeOptions'

export default function Header () {
	// const { title } = useGeneralSettings()
	
	// const { navigation } = useNavigation()
	// const { nodes } = navigation
	
	const { themeOptions } = useThemeOptions()
	const { settings } = themeOptions
	const { socialmedia } = settings


	return (
		<>
			<Container>
				<Nav>

          {/* <NavLogo to="/">{title}</NavLogo> */}
{/* 
          <NavItemContainer>
            {nodes.map((item , index ) => {
              return (
                <NavItem key={index}>
                  <Link to={item.path}>{item.label}</Link>
                </NavItem>
              )
            })}
          </NavItemContainer> */}

          <IconContainer>
            {socialmedia.map((item, index) => {
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
