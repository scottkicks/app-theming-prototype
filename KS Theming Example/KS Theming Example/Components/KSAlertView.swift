//
//  KSButton.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/15/23.
//

import SwiftUI

struct KSAlertView: View {
  let label: String
  let fontStyle: FontStyle
  let foregroundColor: ColorStyle
  let backgroundColor: ColorStyle
  
  var body: some View {
    Text(label)
      .frame(width: 351, height: 64)
      .padding(5)
      .adaptiveFont(fontStyle)
      .adaptiveForegroundColor(foregroundColor)
      .adaptiveBackgroundColor(backgroundColor)
      .cornerRadius(6)
    
  }
}

struct KSAlertView_Previews: PreviewProvider {
  static var previews: some View {
    KSAlertView(label: "This is some sort of error, better do something about it.", fontStyle: .body, foregroundColor: .white, backgroundColor: .alert)
      .previewLayout(.sizeThatFits)
  }
}
