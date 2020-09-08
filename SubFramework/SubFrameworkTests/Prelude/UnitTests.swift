import XCTest
@testable import SubFramework

final class UnitTests: XCTestCase {

  func testUnitEquality() {
    XCTAssertEqual(Unit(), Unit())
  }
}
