import XCTest
@testable import SubFramework

class DateFunctionsTests: XCTestCase {

    func test_datesBetween_returnsNDatesPrior_and_nDatesPost_today() throws {
      let dates = datesBetween(fromToday: -2, to: 2)
      let firstDate = Calendar.current.date(byAdding: .day, value: -2, to: Date())!
      let lastDate = Calendar.current.date(byAdding: .day, value: 2, to: Date())!

      XCTAssertTrue(Calendar.current.isDate(dates[0], inSameDayAs: firstDate))
      XCTAssertTrue(Calendar.current.isDate(dates[4], inSameDayAs: lastDate))
    }

  func test_isSameDay_returnsTrue_whenDateIsToday() {
    let date = Date()

    XCTAssertTrue(isToday(date))
  }

  func test_isSameDay_returnsFalse_whenDateIsNotToday() {
    let date = Calendar.current.date(byAdding: .day, value: 1, to: Date())

    XCTAssertFalse(isToday(date!))
  }
}
