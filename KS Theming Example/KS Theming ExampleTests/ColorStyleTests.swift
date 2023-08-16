import XCTest
@testable import KS_Theming_Example

final class ColorStyleTests: XCTestCase {

  func testColorsLoad() throws {
    ColorStyle.allCases.forEach { style in
      let color = style.load()
      XCTAssertNotNil(color, "Unable to load color: \(style.rawValue)")
    }
  }

}
