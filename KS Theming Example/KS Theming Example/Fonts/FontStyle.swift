//
//  FontStyle.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import UIKit

public enum FontStyle: CaseIterable {
  case body
  case callout
  case caption1
  case caption2
  case footnote
  case headline
  case subheadline
  case title1
  case title2
  case title3
}

extension FontStyle {
  func load(
    _ style: FontStyle,
    contentSize: UIContentSizeCategory,
    prefersBoldText: Bool) -> UIFont {
      let textStyle: UIFont.TextStyle
      
      switch style {
      case .body:
        textStyle = .body
      case .callout:
        textStyle = .callout
      case .caption1:
        textStyle = .caption1
      case .caption2:
        textStyle = .caption2
      case .footnote:
        textStyle = .footnote
      case .headline:
        textStyle = .headline
      case .subheadline:
        textStyle = .subheadline
      case .title1:
        textStyle = .title1
      case .title2:
        textStyle = .title2
      case .title3:
        textStyle = .title3
      }
      
      return loadFont(style: textStyle, contentSize: contentSize, prefersBoldText: prefersBoldText)
  }
}

private extension FontStyle {
  func loadFont(style: UIFont.TextStyle, contentSize: UIContentSizeCategory, prefersBoldText: Bool = false, size: CGFloat? = nil) -> UIFont {
    var defaultSize: CGFloat
    
    // Taken directly from our existing code
    switch style {
    case UIFont.TextStyle.body: defaultSize = 17
    case UIFont.TextStyle.callout: defaultSize = 16
    case UIFont.TextStyle.caption1: defaultSize = 12
    case UIFont.TextStyle.caption2: defaultSize = 11
    case UIFont.TextStyle.footnote: defaultSize = 13
    case UIFont.TextStyle.headline: defaultSize = 17
    case UIFont.TextStyle.subheadline: defaultSize = 15
    case UIFont.TextStyle.title1: defaultSize = 28
    case UIFont.TextStyle.title2: defaultSize = 22
    case UIFont.TextStyle.title3: defaultSize = 20
    default: defaultSize = 17
    }
    
    switch contentSize {
    case .extraSmall:
      defaultSize = defaultSize - 3
    case .small:
      defaultSize = defaultSize - 2
    case .medium:
      defaultSize = defaultSize - 1
    case .large:
      break
    case .extraLarge:
      defaultSize = defaultSize + 1
    case .extraExtraLarge:
      defaultSize = defaultSize + 2
    case .extraExtraExtraLarge:
      defaultSize = defaultSize + 3
    case .accessibilityMedium:
      defaultSize = defaultSize + 7
    case .accessibilityLarge:
      defaultSize = defaultSize + 11
    case .accessibilityExtraLarge:
      defaultSize = defaultSize + 15
    case .accessibilityExtraExtraLarge:
      defaultSize = defaultSize + 19
    case .accessibilityExtraExtraExtraLarge:
      defaultSize = defaultSize + 23
    default:
      break
    }
    
    let font = UIFont.preferredFont(forTextStyle: style)
    
    if prefersBoldText {
      font.fontDescriptor.withSymbolicTraits(.traitBold)
    }
    
    return UIFont(
      descriptor: font.fontDescriptor,
      size: ceil(font.pointSize / defaultSize * (size ?? defaultSize))
    )
  }
}
