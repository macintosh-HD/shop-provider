import XCTest
@testable import ShopProvider

final class ShopProviderTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ShopProvider().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
