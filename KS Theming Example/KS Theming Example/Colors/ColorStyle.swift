import UIKit

public enum ColorStyle: String, CaseIterable {
  case backgroundPrimary
  case alert
  case black
  case celebrate100
  case celebrate300
  case celebrate500
  case celebrate700
  case create100
  case create300
  case create500
  case create700
  case facebookBlue
  case inform
  case support100
  case support200
  case support300
  case support400
  case support500
  case support700
  case trust100
  case trust300
  case trust500
  case trust700
  case warn
  case white
  case cellSeparator
}

extension ColorStyle {
  func load() -> UIColor? {
    UIColor(named: self.rawValue)
//      .hex(0xA12027)
  }
}

public extension UIColor {
  /// From our app
  @nonobjc static func hex(_ value: UInt32) -> UIColor {
    let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((value & 0xFF00) >> 8) / 255.0
    let b = CGFloat(value & 0xFF) / 255.0

    return UIColor(red: r, green: g, blue: b, alpha: 1.0)
  }
}
