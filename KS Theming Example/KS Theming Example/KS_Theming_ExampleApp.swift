//
//  KS_Theming_ExampleApp.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

@main
struct KS_Theming_ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            // This isn't techincally necessary since our theme is already the defaultValue, but i like to actually see what's being injected into the environment.
            .environment(\.theme, appTheme)
        }
    }
}
