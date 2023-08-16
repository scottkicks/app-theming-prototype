//
//  ContentSize+Extension.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

// Converting to UIContentSizeCategory (UIKit) so we can have proper mapping between the two in AppTheme
extension ContentSizeCategory {
  func toUIKit() -> UIContentSizeCategory {
    switch self {
    case .extraSmall:
      return .extraSmall
    case .small:
      return .small
    case .medium:
      return .medium
    case .large:
      return .large
    case .extraLarge:
      return .extraLarge
    case .extraExtraLarge:
      return .extraExtraLarge
    case .extraExtraExtraLarge:
      return .extraExtraExtraLarge
    case .accessibilityMedium:
      return .accessibilityMedium
    case .accessibilityLarge:
      return .accessibilityLarge
    case .accessibilityExtraLarge:
      return .accessibilityExtraLarge
    case .accessibilityExtraExtraLarge:
      return .accessibilityExtraExtraLarge
    case .accessibilityExtraExtraExtraLarge:
      return .accessibilityExtraExtraExtraLarge
    @unknown default:
      return .unspecified
    }
  }
}
