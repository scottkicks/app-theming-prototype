//
//  View+Extensions.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

// This is what allows us to actually use the modifiers
extension View {
  func adaptiveForegroundColor(_ style: ColorStyle) -> some View {
    self.modifier(ColorViewModifier(style: style, placement: .foreground))
  }
  
  func adaptiveBackgroundColor(_ style: ColorStyle) -> some View {
    self.modifier(ColorViewModifier(style: style, placement: .background))
  }
  
  func adaptiveFont(_ style: FontStyle) -> some View {
    self.modifier(FontViewModifier(style: style))
  }
}
