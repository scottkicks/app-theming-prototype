//
//  FontViewModifer.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

struct FontViewModifier: ViewModifier {
  @Environment(\.theme) var theme
  @Environment(\.sizeCategory) var contentSize
  @Environment(\.legibilityWeight) var legibilityWeight
  
  var isBoldText: Bool {
    legibilityWeight == .bold
  }
  
  //MARK: Properties
  let style: FontStyle
  
  func body(content: Content) -> some View {
    return content
      .font(
        theme.adpativeFont(
          style,
          contentSize: contentSize,
          prefersBoldText: isBoldText
        )
      )
  }
}

