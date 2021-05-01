import { useStaticQuery, graphql } from 'gatsby'

const query = graphql`
	query MyQuery {
		wp {
			themeOptions {
				settings {
					emailaddress
					socialmedia {
						icons
						link {
							title
							url
						}
					}
				}
			}
		}
	}
`

export const useThemeOptions = () => {
	const { wp } = useStaticQuery(query)
	return wp
}
