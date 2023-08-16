//
//  Theme+ViewModifier.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

/// For background and foreground modification
struct ColorViewModifier: ViewModifier {
  @Environment(\.theme) var theme
  /// We'll use a feature flag to determine darkMode probably instead of the system settings.
  @Environment(\.colorScheme) var colorScheme
  @Environment(\.colorSchemeContrast) var colorContrast
  
  private var isDarkMode: Bool {
    colorScheme == .dark
  }
  
  private var isHighContrast: Bool {
    colorContrast == .increased
  }
  
  /// Keeping different color "cases" is one modifier rather than having multiple
  enum Placement {
    case foreground
    case background
  }
  
  // MARK: Properties
  let style: ColorStyle
  let placement: Placement
  
  @ViewBuilder
  func body(content: Content) -> some View {
    switch placement {
    case .foreground:
      content.foregroundColor(
        theme.adpativeColor(
          style,
          isDarkMode: isDarkMode,
          prefersHightContrast: isHighContrast
        )
      )
    case .background:
      content.background(
        theme.adpativeColor(
          style,
          isDarkMode: isDarkMode,
          prefersHightContrast: isHighContrast
        )
      )
    }
  }
}
