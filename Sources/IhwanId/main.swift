import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct IhwanId: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
        let language: String
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://ihwan.id")!
    var name = "Tech Blog"
    var description = "blog by Ihwan"
    var language: Language { .indonesian }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
//try IhwanId().publish(withTheme: .default(copyright: ""), plugins: [
//    .splash(withClassPrefix: "")
//])


//try IhwanId().publish(withTheme: .default(
//    navigationLinks: [
//      .init(name: "Youtube",
//            url: "https://youtube.com/codewithihwan"), .init(name: "Medium", url: "https://ihwanid.medium.com")],
//    copyright: "Ihwan",
//    twitterURL: "https://twitter.com/ihwan_id",
//    githubURL: "https://github.com/ihwanid"
//  ), plugins: [
//    .splash(withClassPrefix: "")
//  ])

try IhwanId().publish(using: [
  .copyResources(),
  .installPlugin(.splash(withClassPrefix: "")),
  .addMarkdownFiles(),
  .sortItems(by: \.date, order: .descending),
  .generateHTML(withTheme: .basic),
  .unwrap(RSSFeedConfiguration.default) { config in
      .generateRSSFeed(
        including: [.posts],
          config: config
      )
  },
  .generateSiteMap()
])
