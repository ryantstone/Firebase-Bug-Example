import Foundation
import FirebaseFirestoreSwift

public struct ImageAsset: Equatable, Hashable, Codable, Identifiable {
  @DocumentID public var id: String?
  public var url: URL
}

extension ImageAsset {
  public init(
    id: UUID,
    url: URL
  ) {
    self.id = id.uuidString
    self.url = url
  }

  public func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(url)
  }
}

