import React from "react"
import { Link } from "gatsby"

import Layout from "../components/Layout"
import SearchOptimization from "../components/Global/SEO"

const CaseStudy = () => {
	return(
		<Layout>
      <SearchOptimization title="Page two" />
      <h1>Test</h1>
      <p>Test</p>
      <Link to="/">Go back to the homepage</Link>
    </Layout>
	)
}

export default CaseStudy