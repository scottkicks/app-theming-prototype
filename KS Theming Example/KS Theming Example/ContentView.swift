//
//  ContentView.swift
//  KS Theming Example
//
//  Created by Scott Clampet on 8/3/23.
//

import SwiftUI

struct ContentView: View {
  
  let columns = [
    GridItem(.fixed((UIScreen.main.bounds.width / 2) - 20)),
    GridItem(.fixed((UIScreen.main.bounds.width / 2) - 20))
  ]
  
  var body: some View {
    ScrollView(.vertical) {
      VStack(spacing: 25) {
        //MARK: Alerts
        Group {
          SectionHeader("Alerts")
          KSAlertView(label: "This is some sort of error, better do something about it.",
                      fontStyle: .body,
                      foregroundColor: .white,
                      backgroundColor: .alert)
          
          KSAlertView(label: "Heads up, something is going on. Better do something about it.",
                      fontStyle: .body,
                      foregroundColor: .white,
                      backgroundColor: .black)
          
          KSAlertView(label: "Hey something went right and its all good!",
                      fontStyle: .body,
                      foregroundColor: .black,
                      backgroundColor: .create300)
          
          KSButton(label: "Show no header dialog",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .create700)
          
          KSButton(label: "Show header dialog",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .create700)
          
          KSButton(label: "Show tooltip",
                   fontStyle: .callout,
                   foregroundColor: .create700,
                   backgroundColor: .white)
          
          KSButton(label: "Show intercept",
                   fontStyle: .callout,
                   foregroundColor: .support700,
                   backgroundColor: .support300)
        }
        
        //MARK: Buttons
        Group {
          SectionHeader("Buttons")
          KSButton(label: "Primary Green Button",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .create700)
          
          KSButton(label: "Primary Blue Button",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .trust500)
          
          KSButton(label: "Primary Black Button",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .black)
          
          KSButton(label: "Secondary White Button",
                   fontStyle: .callout,
                   foregroundColor: .create700,
                   backgroundColor: .white)
          
          KSButton(label: "Secondary Grey Button",
                   fontStyle: .callout,
                   foregroundColor: .black,
                   backgroundColor: .support300)
          
          KSButton(label: "Secondary Red Button",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .alert)
          
          KSButton(label: "Facebook Button",
                   fontStyle: .callout,
                   foregroundColor: .white,
                   backgroundColor: .facebookBlue)
        }
        
        // MARK: Typography
        VStack {
          SectionHeader("Typography")
          VStack(alignment: .leading, spacing: 5) {
            Text("Title 1")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.title1)
            
            Text("Title 1 Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.title1)
              .fontWeight(.bold)
            
            Text("Title 2")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.title2)
            
            Text("Title  Bold2")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.title2)
              .fontWeight(.bold)
            
            Text("Title 3")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.title3)
            
            Text("Title 3 Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.title3)
              .fontWeight(.bold)
            
            Text("Headline")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.headline)
            
            Text("Headline Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.headline)
              .fontWeight(.bold)
            
            Text("Subheadline")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.subheadline)
            
            Text("Subheadline Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.subheadline)
              .fontWeight(.bold)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal)
          
          VStack(alignment: .leading, spacing: 5) {
            Text("Body")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.body)
            
            Text("Body Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.body)
              .fontWeight(.bold)
            
            Text("Callout")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.callout)
            
            Text("Callout Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.callout)
              .fontWeight(.bold)
            
            Text("Caption 1")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.caption1)
            
            Text("Caption 1 Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.caption1)
              .fontWeight(.bold)
            
            Text("Caption 2")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.caption2)
            
            Text("Caption 2 Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.caption2)
              .fontWeight(.bold)
            
            Text("Footnote")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.footnote)
            
            Text("Footnote Bold")
              .adaptiveForegroundColor(.black)
              .adaptiveBackgroundColor(.backgroundPrimary)
              .adaptiveFont(.footnote)
              .fontWeight(.bold)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal)
        }
        
        // MARK: Colors
        Group {
          SectionHeader("Colors")
          
          ColorGrid()
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
    .adaptiveBackgroundColor(.backgroundPrimary)
  }
  
  @ViewBuilder
  func SectionHeader(_ title: String) -> some View {
    HStack {
      Text(title)
        .frame(maxWidth: .infinity, maxHeight: 10, alignment: .leading)
        .padding()
        .fontWeight(.bold)
        .adaptiveFont(.title1)
        .adaptiveForegroundColor(.black)
    }
  }
  
  @ViewBuilder
  func ColorGrid() -> some View {
    VStack {
      LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
        Text("alert")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.alert)
          .adaptiveFont(.title2)
        
        Text("black")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.black)
          .adaptiveFont(.title2)
        
        Text("celebrate 100")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.celebrate100)
          .adaptiveFont(.title2)
        
        Text("celebrate 300")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.celebrate300)
          .adaptiveFont(.title2)
        
        Text("celebrate 500")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.celebrate500)
          .adaptiveFont(.title2)
        
        Text("celebrate 700")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.celebrate700)
          .adaptiveFont(.title2)
        
        Text("create 100")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.create100)
          .adaptiveFont(.title2)
        
        Text("create 300")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.create300)
          .adaptiveFont(.title2)
        
        Text("create 500")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.create500)
          .adaptiveFont(.title2)
        
        Text("create 700")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.create700)
          .adaptiveFont(.title2)
      }
      .padding(.horizontal)
      
      LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
        Text("facebook blue")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.facebookBlue)
          .adaptiveFont(.title2)
        
        Text("inform")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.inform)
          .adaptiveFont(.title2)
        
        Text("support 100")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.support100)
          .adaptiveFont(.title2)
        
        Text("support 200")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.support200)
          .adaptiveFont(.title2)
        
        Text("support 300")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.support300)
          .adaptiveFont(.title2)
        
        Text("support 400")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.support400)
          .adaptiveFont(.title2)
        
        Text("support 500")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.support500)
          .adaptiveFont(.title2)
        
        Text("support 700")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.support700)
          .adaptiveFont(.title2)
        
        Text("trust 100")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.trust100)
          .adaptiveFont(.title2)
        
        Text("trust 300")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.trust300)
          .adaptiveFont(.title2)
      }
      .padding(.horizontal)
      
      LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
        Text("trust 500")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.trust500)
          .adaptiveFont(.title2)
        
        Text("trust 700")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.white)
          .adaptiveBackgroundColor(.trust700)
          .adaptiveFont(.title2)
        
        Text("warn")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.warn)
          .adaptiveFont(.title2)
        
        Text("white")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.black)
          .adaptiveBackgroundColor(.white)
          .adaptiveFont(.title2)
        
        Text("cell separator")
          .frame(maxWidth: .infinity)
          .padding()
          .adaptiveForegroundColor(.support300)
          .adaptiveBackgroundColor(.cellSeparator)
          .adaptiveFont(.title2)
      }
      .padding(.horizontal)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
