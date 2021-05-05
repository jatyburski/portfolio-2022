import { useStaticQuery, graphql } from 'gatsby'

const query = graphql`
	query useGeneralSettings {
		wp {
			generalSettings {
				title
				description
			}
		}
	}
`

export const useGeneralSettings = () => {
	const { wp } = useStaticQuery(query)
	return wp.generalSettings
}
