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
		`gatsby-plugin-sitemap`,
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
		{
			resolve: `gatsby-plugin-hotjar`,
			options: {
				includeInDevelopment: true,
				id: 1867059,
				sv: 6,
			},
		},
		{
      resolve: `gatsby-plugin-google-gtag`,
      options: {
        trackingIds: [
          "UA-27731403-1", // Google Analytics / GA
          // "AW-CONVERSION_ID", // Google Ads / Adwords / AW
          // "DC-FLOODIGHT_ID", // Marketing Platform advertising products (Display & Video 360, Search Ads 360, and Campaign Manager)
        ],
        // gtagConfig: {
        //   optimize_id: "OPT_CONTAINER_ID",
        //   anonymize_ip: true,
        //   cookie_expires: 0,
        // },
        pluginConfig: {
          // Puts tracking script in the head instead of the body
          head: true,
          // Setting this parameter is also optional
          respectDNT: true,
          // Avoids sending pageview hits from custom paths
          // exclude: ["/preview/**", "/do-not-track/me/too/"],
        },
      },
    },
  ],
}
