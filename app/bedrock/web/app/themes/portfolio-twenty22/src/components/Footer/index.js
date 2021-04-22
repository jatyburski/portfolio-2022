import React from 'react'
import {
	Container,
	Row,
	Title,
	SocialProfiles,
  ListItem,
	Colophon,
	Widget
} from './FooterElements'
import { Link, graphql, useStaticQuery } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import ExternalLink from '../Global/ExternalLink'

const query = graphql`{
	allWp {
	  nodes {
		themeOptions {
		  socialIcons {
        socialmedia {
          link {
            title
            url
            }
          }
        }
      }
      generalSettings {
        email
      }
	  }
	}
}`

const Footer = () => {

	const data = useStaticQuery(query)
	const platforms = data.allWp.nodes[0].themeOptions.socialIcons.socialmedia
  const email = data.allWp.nodes[0].generalSettings.email
	
	return (
		<Container>
			<Row>
				<Title>
          Let's<br />
          Connect
				</Title>
				<SocialProfiles>
          <ListItem>
            <ExternalLink to={email}>
              Email
            </ExternalLink>
          </ListItem>
					{platforms.map((item, index) => {
						return (
							<ListItem key={index}>
								<ExternalLink to={item.link.url}>
									{item.link.title}
								</ExternalLink>
							</ListItem>
						)
					})}
				</SocialProfiles>
			</Row>
			<Row>
				<Colophon>
					Designed &amp; Developed with <FontAwesomeIcon icon={['fas', 'heart']} /> and <FontAwesomeIcon icon={['fas', 'music']} /> in Baltimore.<br />
					<span aria-label="Copyright">c &mdash;</span> {new Date().getFullYear()}. All Rights Reserved.
				</Colophon>
				<Widget>
					<Link to="/">Tech Powering this Portfolio</Link>
				</Widget>
			</Row>
		</Container>
	)
}

export default Footer
