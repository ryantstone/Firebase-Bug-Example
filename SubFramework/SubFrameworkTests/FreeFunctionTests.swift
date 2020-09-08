import XCTest
@testable import SubFramework

class FreeFunctionTests: XCTestCase {
    func test_execute() throws {
      var value = 1
      let f = { value += 1 }
      execute(f)
      
      XCTAssertEqual(value, 2)
    }

  func test_removeSpaces_removesAllSpaces() {
    let value = "This is a string with spaces."
    let result = removeSpaces(value)
    
    XCTAssertEqual(result, "Thisisastringwithspaces.")
  }

  func test_appendTo_addsValuesToEndOfArray() {
    let value = [1, 2, 3]
    let result = appendTo(value)(9)
    
    XCTAssertEqual(result, [1, 2, 3, 9])
  }
  
  func test_numberOfOccurrences_returnsNumberOfTimesLetterIsInString() {
    let value: Character = "x"
    let result = numberOfOccurrences(of: value)("xYxX")
    
    XCTAssertEqual(result, 2)
  }
  
  func test_orderWith_ordersSetOfValue_toMirror_orderOfArrayOfUUIDS() {
//    
//    let ids: [UUID] = (0..<5).map { _ in UUID() }
//    let values: Set<ManagedAuthor> = ids
//      .map { ManagedAuthor(id: $0, name: fuzzedAuthor().name)}
//      .reduce(Set.init)
//    
//    let shuffledIds = ids.shuffled()
//    
//    let result: [ManagedAuthor] = orderWith(shuffledIds)(values)
//    
//    XCTAssertEqual(result.map(\.id), shuffledIds)
  }
  
  func test_mutate_changeValue() {
    var value = 1
    
    mutate(&value, { $0 + 7 })
    
    XCTAssertEqual(value, 8)
  }
}
