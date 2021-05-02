import { useStaticQuery, graphql } from 'gatsby'

const query = graphql`
	query useNavigation {
		allWpMenu {
			edges {
				node {
					menuItems {
						nodes {
							label
							path
							id
						}
					}
				}
			}
		}
	}
`

export const useNavigation = () => {
	const data = useStaticQuery(query)
	return data.allWpMenu.edges[0].node.menuItems
}
