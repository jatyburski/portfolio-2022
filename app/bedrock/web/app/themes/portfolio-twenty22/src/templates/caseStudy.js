import React from "react"
import { Link, graphql } from "gatsby"

import Layout from "../components/Layout"
import SEO from "../components/Global/SEO"

const CaseStudy = () => {
	return(
		<Layout>
      <SEO title="Page two" />
      <h1>Test</h1>
      <p>Test</p>
      <Link to="/">Go back to the homepage</Link>
    </Layout>
	)
}

export default CaseStudy