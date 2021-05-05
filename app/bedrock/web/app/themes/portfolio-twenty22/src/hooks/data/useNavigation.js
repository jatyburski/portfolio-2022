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
	const { allWpMenu } = useStaticQuery(query)
	return allWpMenu.edges[0].node.menuItems
}
