/**
 * Implement Gatsby's Node APIs in this file.
 *
 * See: https://www.gatsbyjs.com/docs/node-apis/
 */

 const path = require(`path`)

 // Log out information after a build is done
exports.onPostBuild = ({ reporter }) => {
  reporter.info(`Your Gatsby site has been built!`)
}

// Create case study pages dynamically
exports.createPages = async ({ graphql, actions }) => {
	
	const { createPage } = actions
	const CaseStudy = path.resolve(`./src/templates/caseStudy.js`);
	const result = await graphql(`
		{
			allWpPost {
				nodes {
					slug
					title
					excerpt
					date
				}
			}
		}
	`)

	result.data.allWpPost.nodes.forEach(node => {
		createPage({
			path: `/case-studies/${node.slug}/`,
			component: CaseStudy,
			context: {
				title: node.title,
				date: node.date,
			}
		})
	})
}