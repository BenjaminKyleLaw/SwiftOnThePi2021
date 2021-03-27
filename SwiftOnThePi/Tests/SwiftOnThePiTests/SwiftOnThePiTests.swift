import XCTest
@testable import SwiftOnThePi

final class SwiftOnThePiTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftOnThePi().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
