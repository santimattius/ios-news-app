//
//  NewsRepositoryTests.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 9/9/22.
//

import XCTest
@testable import ios_news_app

final class NewsRepositoryTests: XCTestCase {

    override func setUpWithError() throws {}

    override func tearDownWithError() throws {}

    func testValidatEverythingResponseWithArticle() async throws {
        let dataSouce = FakeNewsDataSource()
        let repository = NewsRepositoryImpl(dataSource: dataSouce)
        let result = await repository.everything(text: "Apple")
        XCTAssertEqual(result.isEmpty, false, "result not empty")
    }

    func testValidatEverythingResponseWithoutArticle() async throws {
        let dataSouce = FailNewsDataSource()
        let repository = NewsRepositoryImpl(dataSource: dataSouce)
        let result = await repository.everything(text: "Apple")
        XCTAssertEqual(result.isEmpty, true, "result is empty")
    }

    func testValidateTopHeadlinesResponseWithArticle() async throws {
        let dataSouce = FakeNewsDataSource()
        let repository = NewsRepositoryImpl(dataSource: dataSouce)
        let result = await repository.topHeadlines()
        XCTAssertEqual(result.isEmpty, false, "result not empty")
    }

    func testValidateTopHeadlinesResponseWithoutArticle() async throws {
        let dataSouce = FailNewsDataSource()
        let repository = NewsRepositoryImpl(dataSource: dataSouce)
        let result = await repository.topHeadlines()
        XCTAssertEqual(result.isEmpty, true, "result is empty")
    }
}
