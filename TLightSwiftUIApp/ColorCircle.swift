//
//  ColorCircle.swift
//  TLightSwiftUIApp
//
//  Created by Артём Дмитриев on 25.05.2022.
//

import SwiftUI

struct ColorCircle: View {
  let color: Color
  let opacity: Double
  
  var body: some View {
    Circle()
      .foregroundColor(color)
      .opacity(opacity)
      .frame(width: 100, height: 100)
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
  }
}

struct ColorCircle_Previews: PreviewProvider {
  static var previews: some View {
    ColorCircle(color: .red, opacity: 0.3)
  }
}
