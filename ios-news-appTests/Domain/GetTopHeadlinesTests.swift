//
//  GetTopHeadlinesTests.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 13/9/22.
//

import XCTest

final class GetTopHeadlinesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetTopHeadlinesWithResults() async throws {
        let dataSouce = FakeNewsDataSource()
        let repository = FakeRepository(dataSource: dataSouce)
        let usecase = GetTopHeadlines(repository: repository)
        let result = await usecase.invoke()
        XCTAssertEqual(result.isEmpty, false, "result not empty")
    }

    func testGetTopHeadlinesWithoutResults() async throws {
        let dataSouce = FailNewsDataSource()
        let repository = FakeRepository(dataSource: dataSouce)
        let usecase = GetTopHeadlines(repository: repository)
        let result = await usecase.invoke()
        XCTAssertEqual(result.isEmpty, true, "result is empty")
    }

}
