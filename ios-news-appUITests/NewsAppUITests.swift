//
//  ios_news_appUITests.swift
//  ios-news-appUITests
//
//  Created by Santiago Mattiauda on 9/9/22.
//

import XCTest

final class NewsAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        DependencyProvider.shared.testing(dataSource: FakeNewsDataSource())
//        app.launch()
//
//        let welcome = app.staticTexts["JetBlue Airline boss over-hiring to beat staff exodus"]
//
//        XCTAssert(welcome.exists)
//        XCTAssertEqual(welcome.label, "JetBlue Airline boss over-hiring to beat staff exodus")
        XCTAssertEqual("Test template", "Test template")
    }
}
