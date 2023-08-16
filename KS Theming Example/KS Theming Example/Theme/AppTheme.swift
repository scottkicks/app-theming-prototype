import UIKit
import SwiftUI

// UIKit
public protocol ThemeProvider {
    func adpativeColor(
      _ style: ColorStyle,
      isDarkMode: Bool,
      prefersHightContrast: Bool
    ) -> UIColor
  
  func adpativeFont(
    _ style: FontStyle,
    contentSize: UIContentSizeCategory,
    prefersBoldText: Bool
  ) -> UIFont
}

// SwiftUI wrapper
public extension ThemeProvider {
  func adpativeColor(
    _ style: ColorStyle,
    isDarkMode: Bool,
    prefersHightContrast: Bool) -> Color {
    Color(
      self.adpativeColor(
        style,
        isDarkMode: isDarkMode,
        prefersHightContrast: prefersHightContrast
      )
    )
  }
  
  func adpativeFont(
    _ style: FontStyle,
    contentSize: ContentSizeCategory,
    prefersBoldText: Bool
  ) -> Font {
    let convertedSize = contentSize.toUIKit()
    return Font(
      self.adpativeFont(
        style,
        contentSize: convertedSize,
        prefersBoldText: prefersBoldText
      )
    )
  }
}

public class AppTheme: ThemeProvider {
  
  public init() {}
  
  public func adpativeColor(_ style: ColorStyle, isDarkMode: Bool, prefersHightContrast: Bool) -> UIColor {
    style.load()! //not ideal to force unwrap but I added a unit test to cover this for now.
  }
  
  public func adpativeFont(_ style: FontStyle, contentSize: UIContentSizeCategory, prefersBoldText: Bool) -> UIFont {
    style.load(style, contentSize: contentSize, prefersBoldText: prefersBoldText)
  }
}



let appTheme = AppTheme()
