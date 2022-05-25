//
//  toggleColorButton.swift
//  TLightSwiftUIApp
//
//  Created by Артём Дмитриев on 25.05.2022.
//

import SwiftUI

struct toggleColorButton: View {
  let buttonName: String
  let action: () -> Void
  
  var body: some View {
    Button(action: action) {
      Text(buttonName)
        .fontWeight(.bold)
        .font(.title)
        .foregroundColor(.white)
        .textCase(.uppercase)
    }
    .frame(width: 250, height: 70)
    .background(Color.blue)
    .cornerRadius(20)
    .overlay(
      RoundedRectangle(cornerRadius: 20)
        .stroke(Color.white, lineWidth: 4)
    )
  }
}

struct toggleColorButton_Previews: PreviewProvider {
  static var previews: some View {
    toggleColorButton(buttonName: "Start", action: {})
  }
}
