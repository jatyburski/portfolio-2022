import React from "react"
import { Link, graphql } from "gatsby"
import { StaticImage } from "gatsby-plugin-image"

import Layout from "../components/Layout"
import SearchOptimization from "../components/Global/SEO"

const IndexPage = (props) => {

  // const {
  //   data: { allWpPost },
  // } = props

  return (
    <Layout>
      <SearchOptimization title="Home" />

      <h1>Hi people</h1>
      <p>Welcome to your new Gatsby site.</p>
      <p>Now go build something great.</p>

      <StaticImage
        src="../images/gatsby-astronaut.png"
        width={300}
        quality={95}
        formats={["AUTO", "WEBP", "AVIF"]}
        alt="A Gatsby astronaut"
        style={{ marginBottom: `1.45rem` }}
      />

      <p>
        <Link to="/case-studies/">Go to page 2</Link> <br />
        <Link to="/using-typescript/">Go to "Using TypeScript"</Link>
      </p>

      {/* <div>
        { allWpPost.nodes.map(node=> {
          return (
            <h1>{node.title}</h1>
          )
        })}
      </div> */}
    </Layout>
  )
}

export const pageQuery = graphql`
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
`

export default IndexPage