//
//  KSButton.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/15/23.
//

import SwiftUI

struct KSButton: View {
  let label: String
  let fontStyle: FontStyle
  let foregroundColor: ColorStyle
  let backgroundColor: ColorStyle
  
    var body: some View {
      Button {} label: {
        Text(label)
          .adaptiveFont(fontStyle)
      }
      .frame(width: 351, height: 48)
      .padding(2)
      .adaptiveForegroundColor(foregroundColor)
      .adaptiveBackgroundColor(backgroundColor)
      .cornerRadius(15)
    }
}

struct KSButton_Previews: PreviewProvider {
    static var previews: some View {
      KSButton(label: "Show no header dialog",
                    fontStyle: .callout,
                    foregroundColor: .white,
                    backgroundColor: .create700)
        .previewLayout(.sizeThatFits)
    }
}
