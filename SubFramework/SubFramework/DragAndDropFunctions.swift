import Foundation
import Firebase

/// Converts an `Encodable` object into an `NSItemProvider` for drag and drop functionality for value semantics.
public func encodableToItemProvider<A: Encodable>(_ obj: A) -> NSItemProvider {

  NSItemProvider()

//  obj |> Convert.codableToData >>> buildItemProviderBox >>> configureItemProvider
}

/// Initializes `NSItemProviderBox` with raw `Data`
func buildItemProviderBox(_ data: Data) -> NSItemProviderBox {
  NSItemProviderBox(data: data)
}

/// Initializes a `NSItemProvider` with an `NSItemProviderBox`
/// - Parameter box: Box for conversion
/// - Returns: NSItemProvider for drag drop data
func configureItemProvider(_ box: NSItemProviderBox) -> NSItemProvider {
  NSItemProvider(object: box)
}

/// Converts an `NSItemProviderBox` to a `Decodable` object
/// - Parameter itemProvider: A box containing raw codable data
/// - Returns: A decodable object
public func itemProviderBoxToDecodable<A: Decodable>(_ itemProvider: NSItemProviderReading?) -> A? {
  itemProvider
    .flatMap { $0 as? NSItemProviderBox }
    .map(\.item)
    .flatMap {
      try? JSONDecoder().decode(A.self, from: $0)
    }

//    .flatMap {
//      do {
//        return try JSONDecoder().decode(A.self, from: itemProvider)
////        guard let dictionary = try JSONSerialization.jsonObject(with: $0, options: []) as? [String: Any] else {
////          return nil
////        }
////
////        return try Firestore.Decoder().decode(A.self, from: dictionary)
//      } catch {
//        debugPrint(error)
//
//        return nil
//      }
//    }
}
