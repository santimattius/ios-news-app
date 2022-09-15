//
//  SearchEverythingTests.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 13/9/22.
//

import XCTest

final class SearchEverythingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSearchEverythingWithResults() async throws {
        let dataSouce = FakeNewsDataSource()
        let repository = FakeRepository(dataSource: dataSouce)
        let usecase = SearchEverything(repository: repository)
        let result = await usecase.invoke(text: "Apple")
        XCTAssertEqual(result.isEmpty, false, "result not empty")
    }

    func testSearchEverythingWithoutResults() async throws {
        let dataSouce = FailNewsDataSource()
        let repository = FakeRepository(dataSource: dataSouce)
        let usecase = SearchEverything(repository: repository)
        let result = await usecase.invoke(text: "Apple")
        XCTAssertEqual(result.isEmpty, true, "result is empty")
    }

}
