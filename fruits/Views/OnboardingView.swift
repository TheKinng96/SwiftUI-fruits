//
//  OnboardingView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/21.
//

import SwiftUI

struct OnboardingView: View {
  var fruits: [Fruit] = fruitData
    var body: some View {
      TabView {
        ForEach (fruits[0...5]) { item in
          FruitCardView(fruit: item)
        } //: LOOP
      } //: TABVIEW
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
