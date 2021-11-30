//
//  File.swift
//  
//
//  Created by Ihwan on 04/07/21.
//

//import Foundation
//import Publish
//import Plot
//
//extension Theme {
//  static func `default`(
//    additionalStylesheetPaths: [Path] = [],
//    pagePaths: [Path] = [],
//    contentPagePaths: [Path] = [],
//    navigationLinks: [DefaultNavigationLink] = [],
//    copyright: String,
//    twitterURL: URLRepresentable? = nil,
//    githubURL: URLRepresentable? = nil) -> Self {
//    Theme(htmlFactory: DefaultHTMLFactory(
//      additionalStylesheetPaths: additionalStylesheetPaths,
//      pagePaths: pagePaths,
//      contentPagePaths: contentPagePaths,
//      navigationLinks: navigationLinks,
//      copyright: copyright,
//      twitterURL: twitterURL,
//      githubURL: githubURL
//    ))
//  }
//}
//
//struct DefaultNavigationLink {
//  let name: String
//  let url: URLRepresentable
//}
//
//private struct DefaultHTMLFactory<Site: Website>: HTMLFactory {
//  let stylesheetPaths: [Path] = [
//    "/DefaultTheme/styles.css",
//    "https://use.typekit.net/fof8oqj.css"
//  ]
//  var additionalStylesheetPaths: [Path] = []
//  var pagePaths: [Path] = []
//  var contentPagePaths: [Path] = []
//  var navigationLinks: [DefaultNavigationLink] = []
//  var copyright: String
//  var twitterURL: URLRepresentable?
//  var githubURL: URLRepresentable?
//  
//  func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
//    try makeIndexHTML(for: index, context: context, selectedSection: context.sections.ids.first)
//  }
//  
//  func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
//    try makeIndexHTML(for: context.index, context: context, selectedSection: section.id)
//  }
//  
//  func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML { .init(
//    .lang(context.site.language),
//    .head(for: item, on: context.site, stylesheetPaths: stylesheetPaths + additionalStylesheetPaths),
//    .body(
//      .header(for: context, pagePaths: pagePaths, navigationLinks: navigationLinks, selectedSection: item.sectionID),
//      .main(.article(.class("content"), .id("item-page-content"),
//        .h1(.text(item.title)),
//        .element(named: "time", nodes: [.id("item-page-date"),
//            .text(DateFormatter.localizedString(from: item.date, dateStyle: .full, timeStyle: .none))]),
//        .contentBody(item.body.removingH1())
//      )),
//      .div(.class("spacer")),
//      .footer(copyright: copyright, twitterURL: twitterURL, githubURL: githubURL)
//    )
//  )}
//  
//  func makePageHTML(for page: Page, context: PublishingContext<Site>) throws -> HTML { .init(
//    .lang(context.site.language),
//    .head(for: page, on: context.site, stylesheetPaths: stylesheetPaths + additionalStylesheetPaths),
//    .body(
//      .header(for: context, pagePaths: pagePaths, navigationLinks: navigationLinks, selectedPage: page),
//      .main(.id("page"), .if(contentPagePaths.contains(page.path), .class("content")),
//        .contentBody(page.body.removingH1())),
//      .div(.class("spacer")),
//      .footer(copyright: copyright, twitterURL: twitterURL, githubURL: githubURL)
//    )
//  )}
//  
//  func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? { nil }
//  func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? { nil }
//  
//  private func makeIndexHTML(for index: Index, context: PublishingContext<Site>, selectedSection: Site.SectionID?) throws -> HTML { .init(
//    .lang(context.site.language),
//    .head(for: index, on: context.site, stylesheetPaths: stylesheetPaths + additionalStylesheetPaths),
//    .body(
//      .header(for: context, pagePaths: pagePaths, navigationLinks: navigationLinks, selectedSection: selectedSection),
//      .ul(.id("item-list"),
//        .forEach(context.allItems(sortedBy: \.date, order: .descending)) { item in
//          .li(
//            .div(.class("item-title"), .a(
//              .href(item.path),
//              .text(item.title)
//            )),
//            .div(.class("item-date"),
//                 .text(DateFormatter.localizedString(from: item.date, dateStyle: .full, timeStyle: .none))),
//            .p(.text(item.description)),
//            .a(.class("read-more"), .href(item.path), .text("Read more..."))
//          )
//        }),
//      .div(.class("spacer")),
//      .footer(copyright: copyright, twitterURL: twitterURL, githubURL: githubURL)
//    )
//  )}
//}
//
//private extension Content.Body {
//  func removingOccurrences(of string: String) -> Self {
//    .init(html: html.replacingOccurrences(of: string, with: "", options: .regularExpression))
//  }
//  
//  func removingH1() -> Self {
//    self.removingOccurrences(of: "<h1>.*</h1>")
//  }
//}
//
//private extension Node where Context == HTML.BodyContext {
//  static func header<Site: Website>(for context: PublishingContext<Site>, pagePaths: [Path] = [], navigationLinks: [DefaultNavigationLink] = [], selectedSection: Site.SectionID? = nil, selectedPage: Page? = nil) -> Node {
//    .header(
//      .div(.id("title"), .a(.href("/"), .text(context.site.name))),
//      .div(.id("subtitle"), .text(context.site.description)),
//      .div(.class("divider")),
//      .nav(.ul(
//        .forEach(Site.SectionID.allCases) { section in
//          .li(.a(
//            .class(section == selectedSection ? "selected" : ""),
//            .href("/"),
//            .text(context.sections[section].title.uppercased())
//          ))
//        },
//        .forEach(pagePaths.compactMap { context.pages[$0] }) { page in
//          .li(.a(
//            .class(page == selectedPage ? "selected" : ""),
//            .href(page.path),
//            .text(page.content.title.uppercased())
//          ))
//        },
//        .forEach(navigationLinks) { link in
//          .li(.a(.target(.blank), .href(link.url), .text(link.name.uppercased())))
//        }
//      ))
//    )
//  }
//  
//  static func footer(copyright: String, twitterURL: URLRepresentable?, githubURL: URLRepresentable?) -> Node {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "yyyy"
//    return .footer(
//      .div(.class("divider")),
//      .div(.id("footer-content"),
//        .unwrap(dateFormatter.string(from: Date())) {
//          .p("Copyright © \($0) \(copyright)")
//        },
//        .div(
//          .unwrap(twitterURL) { .a(.class("social-icon"), .target(.blank), .href($0), .img(.src("/DefaultTheme/twitter.svg"))) },
//          .unwrap(githubURL) { .a(.class("social-icon"), .target(.blank), .href($0), .img(.src("/DefaultTheme/github.svg"))) }
//        )
//      )
//    )
//  }
//}
