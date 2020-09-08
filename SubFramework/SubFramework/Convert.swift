import UIKit
//import MetadataExtractor
//import FirebaseFirestore

public struct Convert {
  public static func urlToData(_ url: URL) -> Data? {
    return try? Data(contentsOf: url)
  }
  
  public static func stringToURL(_ str: String) -> URL? {
    return URL(string: str)
  }

  public static func imageAssetToUIImage(_ asset: ImageAsset) -> UIImage? {
    return urlToData(asset.url)
      .flatMap(UIImage.init(data:))
  }
  
  public static func UIImageToData(_ image: UIImage) -> Data? {
    return image.cgImage?.dataProvider?.data as Data?
  }
  
  public static func UIImageJpegData(compression: CGFloat) -> (UIImage) -> Data? {
    return {
      return $0.jpegData(compressionQuality: compression)
    }
  }
  
  public static func pickerValueToTime(_ kind: Time.Kind) -> ([Int]) -> Time {
    return {
      let hours = $0[0]
      let minutes = $0[1]

      return Time((hours * 60 * 60) + minutes * 60, kind: kind)
    }
  }
  
  public static func timeToPickerValue(_ time: Time) -> [Int] {
    return [time.hours, time.minutes]
  }
  
  public static func nsNumberToInt(_ num: NSNumber) -> Int {
    return Int(truncating: num)
  }
}
