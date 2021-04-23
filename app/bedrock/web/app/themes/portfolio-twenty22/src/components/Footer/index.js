import React from 'react'
import {
	Container,
	Row,
	Title,
	SocialProfiles,
  	ListItem,
	Button,
	Colophon,
	Widget
} from './FooterElements'
import { Link, graphql, useStaticQuery } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import ExternalLink from '../Global/ExternalLink'
import Clipboard from 'clipboard'
import gsap from 'gsap'

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

const copy = new Clipboard("button");

copy.on("success", function() {
	alert("Copied to clipboard.")
});
copy.on("error", function() {
	alert("Failed to copy.")
});

gsap.set("ul", { perspective: 800 });
gsap.set("li", { transformStyle: "preserve-3d" });
gsap.set(".flip-reveal", { rotationY: -180 });
gsap.set([ ".flip-reveal", ".flip-default" ], { backfaceVisibility:"hidden" });

const Footer = () => {

	const data = useStaticQuery(query)
	const platforms = data.allWp.nodes[0].themeOptions.socialIcons.socialmedia
  	const email = data.allWp.nodes[0].generalSettings.email
	console.log(email)
	
	return (
		<Container>
			<Row>
				<Title>
					Let's<br />
					Connect
				</Title>
				<SocialProfiles>
					<ListItem hasOptions>
						<span tabIndex="-1" aria-hidden="true" className="focus:outline-none flip-default">
							Email
						</span>
						<div className="flip-reveal">
							<Button data-clipboard-text={ email }>
								Copy Email
							</Button>
							<a href={ 'mailto:' + email + '?subject=Hello Joe' }>
								Open in App
							</a>
						</div>
					</ListItem>
					{platforms.map(( item, index ) => {
						return (
							<ListItem key={ index }>
								<span tabIndex="-1" aria-hidden="true" className="focus:outline-none flip-default">
									{ item.link.title }
								</span>
								<ExternalLink to={ item.link.url } className="flip-reveal">
									{ item.link.title }
								</ExternalLink>
							</ListItem>
						)
					})}
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
