//
//  AppTheme+Environment.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

struct ThemeKey: EnvironmentKey {
  static var defaultValue: ThemeProvider = appTheme
}

///Gives us access to ThemeProvider via @Environment
extension EnvironmentValues {
  var theme: ThemeProvider {
    get { self[ThemeKey.self] }
    set { self[ThemeKey.self] = newValue }
  }
}
