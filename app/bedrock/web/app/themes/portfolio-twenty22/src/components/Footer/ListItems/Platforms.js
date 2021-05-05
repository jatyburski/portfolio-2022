import React from 'react'
import { ListItem, ListLink } from '../FooterElements'
import { useThemeOptions } from '../../../hooks/data/useThemeOptions'

export default function Platforms () {
	const { themeOptions } = useThemeOptions()
	const { settings } = themeOptions
	const { socialmedia } = settings

	return (
		<>
			{socialmedia.map(( item, index ) => {

				return (
					<ListItem key={ index + 1 }>

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
