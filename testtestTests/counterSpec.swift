//
//  counterSpec.swift
//  testtestTests
//
//  Created by Minho Yi on 2023/04/18.
//

import ComposableArchitecture
import Foundation
import XCTest

@testable import testtest

@MainActor
final class counterTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    continueAfterFailure = true
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  @MainActor
  func testExample() async throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    continueAfterFailure = true
    let store = TestStore(initialState: Counter.State(), reducer: Counter()) { _ in
    }

    await store.send(.increase) {
      $0.count = 1
    }
  }

  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    measure {
      // Put the code you want to measure the time of here.
    }
  }
}
