import React from 'react'
import { Link } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome' 
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
import { useGeneralSettings } from '../../hooks/data/useGeneralSettings'
import { useNavigation } from '../../hooks/data/useNavigation'
import { useThemeOptions } from '../../hooks/data/useThemeOptions'

export default function Header () {
	const generalSettings = useGeneralSettings()
	const { title, description } = generalSettings

	const navigation = useNavigation()
	const { nodes } = navigation
	
	const { themeOptions } = useThemeOptions()
	const { settings } = themeOptions
	const { socialmedia } = settings


	return (
		<>
			<Container>
				<Nav>

          <NavLogo to="/">{title}</NavLogo>

					<p>{description}</p>

          <NavItemContainer>
            {nodes.map((item , index) => {
              return (
                <NavItem key={ index }>
                  <Link to={ item.path }>{ item.label }</Link>
                </NavItem>
              )
            })}
          </NavItemContainer>

          <IconContainer>
            {socialmedia.map((item, index) => {
              return (
                <IconItem key={index}>
              
                  <ExternalLink to={ item.link.url } title={ item.link.title }>
                    <span className="sr-only">{ item.link.title }</span>
                    <FontAwesomeIcon icon={ ['fab', item.icons] } size="4x" />
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
