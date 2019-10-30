const config = {
  siteTitle: 'Ihwan ID',
  siteTitleShort: 'Ihwan',
  siteTitleAlt: 'Ihwan ID',
  siteLogo: '/logos/logo.png',
  siteUrl: 'https://ihwan.id',
  repo: 'https://github.com/ihwanid/ihwan.id',
  pathPrefix: '',
  dateFromFormat: 'YYYY-MM-DD',
  dateFormat: 'MMMM Do, YYYY',
  siteDescription: 'Hi saya Ihwan, Associate Android Developer asal Majalengka. Senang menulis dan membuat video seputar IT',
  siteRss: '/rss.xml',
  googleAnalyticsID: 'UA-125079658-2',
  disqusShortname: 'ihwanid',
  postDefaultCategoryID: 'Tech',
  userName: 'ihwan',
  userEmail: 'mynameisihwan@gmail.com',
  userTwitter: 'ihwan_id',
  userLocation: 'Majalengka, ID',
  userAvatar: 'https://api.adorable.io/avatars/150/test.png',
  userDescription: 'Hi saya Ihwan, seorang Associate Android Developer asal Majalengka. Senang menulis dan membuat video seputar IT.',
  menuLinks: [
    {
      name: 'CodeWithIhwan',
      link: 'https://codewith.ihwan.id',
    },
    {
      name: 'Articles',
      link: '/blog/',
    },
    {
      name: 'Now',
      link: '/now/',
    },
    {
      name: 'Contact',
      link: '/contact/',
    },
  ],
  themeColor: '#3F80FF', // Used for setting manifest and progress theme colors.
  backgroundColor: '#ffffff',
}

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
