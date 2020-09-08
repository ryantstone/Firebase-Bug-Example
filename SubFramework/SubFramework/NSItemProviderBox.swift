import Foundation
import CoreServices

public final class NSItemProviderBox: NSObject, NSItemProviderReading, NSItemProviderWriting, Codable {
  public static var readableTypeIdentifiersForItemProvider: [String] { [(kUTTypeData) as String] }
  public static var writableTypeIdentifiersForItemProvider: [String] { [(kUTTypeData as String)] }
  public let item: Data

  public init(data: Data) {
    self.item = data
  }

  public static func object(withItemProviderData data: Data, typeIdentifier: String) throws -> NSItemProviderBox {
    try JSONDecoder().decode(NSItemProviderBox.self, from: data)
  }

  public func loadData(
    withTypeIdentifier typeIdentifier: String,
    forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void
  ) -> Progress? {
    let progress = Progress(totalUnitCount: 100)
    do {
      let data = try JSONEncoder().encode(self)
      progress.completedUnitCount = 100
      completionHandler(data, nil)
    } catch {
      completionHandler(nil, error)
    }

    return progress
  }
}
