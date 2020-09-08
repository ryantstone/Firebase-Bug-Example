import Foundation

public struct Time: Equatable, Hashable, Codable {
  public enum Kind: String, Equatable, Hashable, Codable {
    case cook, prep, total
  }

  public let kind: Kind
  public var hours: Int { totalSeconds / 3600 }
  public var minutes: Int { (totalSeconds % 3600) / 60 }

  public let totalSeconds: Int
}

extension Time {
  public init(_ value: Int, kind: Kind) {
    totalSeconds = value

    self.kind = kind
  }
}

