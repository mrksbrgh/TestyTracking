//
//  TestyTrackingTests.swift
//  TestyTrackingTests
//
//  Created by Markus Bergh on 2023-11-08.
//

import ViewInspector
import XCTest
@testable import TestyTracking

final class TestyTrackingTests: XCTestCase {

  private var viewModel: ContentViewModel!

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    viewModel = ContentViewModel()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testContentViewTitleExists() throws {
    let view = ContentView(viewModel: viewModel)

    XCTAssertNotNil(try view.inspect().find(text: "Testy Tracking"))
  }
  
  func testContentViewTracking() throws {
    let view = ContentView(viewModel: viewModel)

    try view.inspect().vStack().callOnAppear()
    
    XCTAssertEqual(viewModel.tracker.invocations.count, 1)
    XCTAssertEqual(viewModel.tracker.invocations.first, "trackScreenContentView")

    // Find and tap on button
    let button = try view.inspect().find(button: "Action button")
    try button.tap()
    
    XCTAssertEqual(viewModel.tracker.invocations.count, 2)
    XCTAssertEqual(viewModel.tracker.invocations.last, "trackDidTapActionContentView")
  }
}
