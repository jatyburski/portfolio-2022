import React from 'react'
import { graphql, useStaticQuery } from "gatsby"
import { ListItem, ListLink } from '../FooterElements'

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
	const data = useStaticQuery( query )
	const platforms = data.allWp.nodes[0].themeOptions.socialIcons.socialmedia
	
	return (
		<>
			{platforms.map(( item, index ) => {

				return (
					<ListItem key={ index }>

						<ListLink to={ item.link.url }>
							<span data-title={ item.link.title }>
								{ item.link.title }
							</span>
						</ListLink>

					</ListItem>
				)

			})}
		</>
	)
}

export default Platforms
