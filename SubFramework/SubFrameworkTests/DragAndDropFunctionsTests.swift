import XCTest
@testable import SubFramework

class DragAndDropFunctionsTests: XCTestCase {
    func test_itemProviderConversions_convertEqually() throws {
      let exp = expectation(description: "Wait")
      let testItem = "Hello World"
      let provider = encodableToItemProvider(testItem)

      provider.loadObject(ofClass: NSItemProviderBox.self) { provider, error in
        XCTAssertEqual(itemProviderBoxToDecodable(provider), testItem)
        exp.fulfill()
      }

      wait(for: [exp], timeout: 1.0)
    }
}
