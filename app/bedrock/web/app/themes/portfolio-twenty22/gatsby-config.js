module.exports = {
  siteMetadata: {
    title: `Joseph Tyburski — Baltimore Senior Web Designer`,
    description: `Joseph Tyburski, an award-winning senior web designer, helps creative leaders create impactful websites that engage with audiences. Hire him to join your team!`,
    author: `Joseph Tyburski`,
  },
  plugins: [
    `gatsby-plugin-react-helmet`,
    `gatsby-plugin-image`,
    `gatsby-plugin-postcss`,
    `gatsby-plugin-styled-components`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `images`,
        path: `${__dirname}/src/images`,
      },
    },
    `gatsby-transformer-sharp`,
    `gatsby-plugin-sharp`,
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: `portfolio-twenty22`,
        short_name: `portfolio`,
        start_url: `/`,
        background_color: `#140f23`,
        theme_color: `#FFC857`,
        display: `minimal-ui`,
        icon: `src/images/gatsby-icon.png`, // This path is relative to the root of the site.
      },
    },
    `gatsby-plugin-gatsby-cloud`,
    // this (optional) plugin enables Progressive Web App + Offline functionality
    // To learn more, visit: https://gatsby.dev/offline
    // `gatsby-plugin-offline`,
    {
      resolve: `gatsby-source-wordpress`,
      options: {
        url: 
        process.env.WPGRAPHQL_URL ||
        `http://portfolio-2022.local/wp/graphql`,
        schema: {
          typePrefix: `Wp`,
        },
        debug: {
          timeBuildSteps: true,
        },
      }
    },
  ],
}
