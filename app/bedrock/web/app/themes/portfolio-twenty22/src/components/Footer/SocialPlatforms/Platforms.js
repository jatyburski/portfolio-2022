import React, { useState, useRef } from 'react'
import { graphql, useStaticQuery } from "gatsby"
import { ListItem, DefaultState } from '../FooterElements'
import ExternalLink from '../../Global/ExternalLink'
import gsap, { Back } from 'gsap'

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
		}
	}
}`


const Platforms = () => {
	
	// Data
	const data = useStaticQuery(query)
	const platforms = data.allWp.nodes[0].themeOptions.socialIcons.socialmedia

	// Triggers
	const [isShown, setIsShown] = useState(-1);

	// Animation
	gsap.set(".flip-container", { perspective: 800 });
	gsap.set(".flip-item", { transformStyle: "preserve-3d" });
	gsap.set(".flip-reveal", { rotationY: -180 });
	gsap.set([ ".flip-reveal", ".flip-default" ], { backfaceVisibility:"hidden" });
	
	return (
		<>
			{platforms.map(( item, index ) => {
				return (
					<ListItem 
						key={ index }
						onMouseEnter={() => setIsShown(index)}
						onMouseLeave={() => setIsShown(-1)}>
						<DefaultState>
							{ item.link.title }
						</DefaultState>
						{index === isShown && (
							<ExternalLink to={ item.link.url } className="absolute overflow-hidden flip-reveal">
								{ item.link.title }
							</ExternalLink>
						)}
					</ListItem>
				)
			})}
		</>
	)
}

export default Platforms
