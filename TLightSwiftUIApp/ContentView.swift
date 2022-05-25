//
//  ContentView.swift
//  TLightSwiftUIApp
//
//  Created by Артём Дмитриев on 25.05.2022.
//

import SwiftUI

enum CurrentLight {
  case red, yellow, green
}

struct ContentView: View {
  @State private var buttonTitle = "Start"
  @State private var currentLight = CurrentLight.red
  
  private func changeColor() {
    switch currentLight {
    case .red: currentLight = .yellow
    case .yellow: currentLight = .green
    case .green: currentLight = .red
    }
  }
}

extension ContentView {
  
  var body: some View {
    ZStack {
      Color(.black)
        .ignoresSafeArea()
      VStack(spacing: 20) {
        ColorCircle(color: .red, opacity: currentLight == .red ? 1 : 0.3)
        ColorCircle(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
        ColorCircle(color: .green, opacity: currentLight == .green ? 1 : 0.3)
        Spacer()
        toggleColorButton(buttonName: buttonTitle) {
          if buttonTitle == "Start" {
            buttonTitle = "Next"
          }
          changeColor()
        }
        .padding()
      }
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
