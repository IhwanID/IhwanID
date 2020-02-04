const config = {
  pathPrefix: '',
  title: 'CodeWithIhwan',
  titleAlt: 'Code With Ihwan',
  description: 'Website tempat belajar mobile programming berbahasa Indonesia lengkap. membahas teknologi native untuk Android, iOS dan Hybrid dengan Flutter.',
  url: 'https://codewith.ihwan.id',
  siteUrl: 'https://codewith.ihwan.id',
  siteLanguage: 'id',
  logo: 'static/logo/logo.png',
  banner: 'static/logo/banner.png',
  favicon: 'static/logo/favicon.png',
  shortName: 'IhwanID',
  author: 'Ihwan',
  themeColor: '#3e7bf2',
  backgroundColor: '#d3e0ff',
  googleAnalyticsID: 'UA-125079658-2',
  userName: 'IhwanID',
  userEmail: 'codewith@ihwan.id',
  twitter: '@Ihwan_ID',
  siteRss: '/rss.xml',
  menuLinks: [
    {
      name: 'About us',
      link: '/about/',
    },
    {
      name: 'Articles',
      link: '/blog/',
    },
    {
      name: 'Contact',
      link: '/contact/',
    },
  ],
};

// Make sure pathPrefix is empty if not needed
if (config.pathPrefix === '/') {
  config.pathPrefix = ''
} else {
  // Make sure pathPrefix only contains the first forward slash
  config.pathPrefix = `/${config.pathPrefix.replace(/^\/|\/$/g, '')}`
}

// Make sure siteUrl doesn't have an ending forward slash
if (config.siteUrl.substr(-1) === '/') config.siteUrl = config.siteUrl.slice(0, -1)

// Make sure siteRss has a starting forward slash
if (config.siteRss && config.siteRss[0] !== '/') config.siteRss = `/${config.siteRss}`

module.exports = config
