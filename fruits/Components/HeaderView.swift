//
//  HeaderView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/24.
//

import SwiftUI

struct HeaderView: View {
  @State private var isAnimating: Bool = false
  var fruit: Fruit
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
      
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        .padding(.vertical, 20)
        .scaleEffect(isAnimating ? 1 : 0.7)
    }
    .frame(height: 440)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(fruit: fruitData[0])
      .previewLayout(.fixed(width: 370, height: 440))
  }
}
