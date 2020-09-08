import XCTest
@testable import SubFramework

class ConvertTests: XCTestCase {

    func test_stringToURL_createsValidURL() throws {
//      let urlText = "https://npr.com"
//      let result = Convert.stringToURL(urlText)
//
//      XCTAssertEqual(result, URL(string: urlText))
    }

  func test_pickerValueToTime_convertsPickerData_toTime() {
//    let data = [1, 59]
//    let function = Convert.pic`kerValueToTime(.cook)
//
//    let result: Time = function(data)
//
//    XCTAssertEqual(result, Time(7140, kind: .cook))
  }

  func test_timeToPickerValue_convertsHoursAndMinutes_toNativePickerData() {
    let time = Time(7140, kind: .cook)

    let result = Convert.timeToPickerValue(time)

    XCTAssertEqual(result, [1, 59])
  }
}
