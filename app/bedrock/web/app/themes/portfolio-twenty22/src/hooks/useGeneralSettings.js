import { useStaticQuery, graphql } from 'gatsby'

const query = graphql`
	query useGeneralSettings {
		wp {
			generalSettings {
				title
			}
		}
	}
`

export const useGeneralSettings = () => {
	const data = useStaticQuery(query)
	return data.wp.generalSettings.title
}
