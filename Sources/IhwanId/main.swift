import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct IhwanId: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case now
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://ihwan.id")!
    var name = "Ihwan ID"
    var description = "iOS Engineer who write blog in Swift & Markdown"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try IhwanId().publish(withTheme: .foundation)
