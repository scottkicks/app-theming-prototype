import SwiftUI

// Considerations:
/// We could build this out in its own module so we can reuse this in future projects
/// and keep our existing code base a little less involved.

// Goal
/// Instead of views and viewcontrollers making their own individual decisions we want everything to be centralized in the theme.
/// The theme should handle everything for us which makes our Views and VCs simpler and smaller.
/// It also would hide implementation details from our app which could be nice because nothing in our app needs to know how the theme is loaded, just that it is accessible. 

/*
 
What this theme needs to do:
 
- Fonts
 - Dynamic sizing fonts
 - Accessibility bold text for fonts
 - Custom fonts
  
 
- Colors
 - Adapt to light and dark mode
 - Accessiblity high contrast
 
- Icons?
 
 */


/*
 Why UIKit first?
 
 UIKit has the bridging protocols to support SwiftUI (UIViewRepresentable & UIViewControllerRepresentable)
 SwiftUI -> UIKit would be much more involved and difficult.
 
 */

// Example API

//enum FontStyle {
//  case title
//}
//
//enum ColorStyle {
//  case backgroundPrimary
//}
//
//protocol AppTheme {
//  func font(
//    _ type: FontStyle,
//    contentSize: ContentSizeCategory,
//    prefersBoldText: Bool
//  ) -> Font
//  
//  func color(
//    _ style: ColorStyle,
//    isDarkMode: Bool,
//    prefersHightContrast: Bool
//  ) -> Color
//}
//
//func example(theme: AppTheme) {
//  theme.font(.title, contentSize: .accessibilityMedium, prefersBoldText: true)
//  // theme.font(.title)
//  
//  theme.color(.backgroundPrimary, isDarkMode: false, prefersHightContrast: false)
//  // theme.color(.backgroundPrimary)
//}



