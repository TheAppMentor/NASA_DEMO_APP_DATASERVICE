import XCTest
@testable import NASA_APOD_Service

final class NASA_APOD_ServiceTests: XCTestCase {
    func testExample() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        let allPosts = try! await NASA_APOD_Service().fetchAPODPost(count: 5)
        XCTAssertTrue(allPosts.count == 5)
        print(allPosts)
    }
}
