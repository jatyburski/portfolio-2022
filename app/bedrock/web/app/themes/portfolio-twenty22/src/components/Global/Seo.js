/**
 * SEO component that queries for data with
 *  Gatsby's useStaticQuery React hook
 *
 * See: https://www.gatsbyjs.com/docs/use-static-query/
 */

 import * as React from "react"
 import PropTypes from "prop-types"
 import { Helmet } from "react-helmet"
 import { useStaticQuery, graphql } from "gatsby"
 
 function SearchOptimization({ description, lang, meta, title }) {
	 const { site } = useStaticQuery(
		 graphql`
			 query {
				 site {
					 siteMetadata {
						 title
						 description
						 author
					 }
				 }
			 }
		 `
	 )
 
	 const metaDescription = description || site.siteMetadata.description
	 const defaultTitle = site.siteMetadata?.title
 
	 return (
		 <Helmet
			 htmlAttributes={{
				 lang,
			 }}
			 title={title}
			 titleTemplate={defaultTitle ? `%s | ${defaultTitle}` : null}
			 meta={[
				 {
					 name: `description`,
					 content: metaDescription,
				 },
				 {
					 property: `og:title`,
					 content: title,
				 },
				 {
					 property: `og:description`,
					 content: metaDescription,
				 },
				 {
					 property: `og:type`,
					 content: `website`,
				 },
				 {
					 name: `twitter:card`,
					 content: `summary`,
				 },
				 {
					 name: `twitter:creator`,
					 content: site.siteMetadata?.author || ``,
				 },
				 {
					 name: `twitter:title`,
					 content: title,
				 },
				 {
					 name: `twitter:description`,
					 content: metaDescription,
				 },
			 ].concat(meta)}
		 >
			 <link rel="prefetch" href="./src/fonts/NeogroteskPro-Regular.woff" as="font" type="font/woff2" crossorigin="" />
			 <link rel="prefetch" href="./src/fonts/NeogroteskPro-Bold.woff" as="font" type="font/woff2" crossorigin="" />
		 </Helmet>
	 )
 }
 
 SearchOptimization.defaultProps = {
	 lang: `en`,
	 meta: [],
	 description: ``,
 }
 
 SearchOptimization.propTypes = {
	 description: PropTypes.string,
	 lang: PropTypes.string,
	 meta: PropTypes.arrayOf(PropTypes.object),
	 title: PropTypes.string.isRequired,
 }
 
 export default SearchOptimization