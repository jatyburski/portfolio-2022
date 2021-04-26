import React from 'react'
import {
	Container,
	Row,
	Title,
	SocialProfiles,
	Colophon,
	Widget
} from './FooterElements'
import { Link } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import Email from './Email/EmailOptions'
import Platforms from './SocialPlatforms/Platforms'

const Footer = () => {
	
	return (
		<Container>
			<Row>
				<Title>
					Let's<br />
					Connect
				</Title>
				<SocialProfiles>
					<Email />
					<Platforms />
				</SocialProfiles>
			</Row>
			<Row>
				<Colophon>
					Designed &amp; Developed with <FontAwesomeIcon icon={[ 'fas', 'heart' ]} className="mx-1" />
					<span className="sr-only">love</span> and <FontAwesomeIcon icon={[ 'fas', 'music' ]} className="mx-1" />
					<span className="sr-only">music</span> in Baltimore.<br />
					<span aria-label="Copyright">c &mdash;</span> {new Date().getFullYear()}. All Rights Reserved.
				</Colophon>
				<Widget>
					<Link to="/" className="hover:text-white">This Portfolio's Tech Stack</Link>
				</Widget>
			</Row>
		</Container>
	)
}

export default Footer
