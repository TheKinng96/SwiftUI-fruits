//
//  OnboardingView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
      TabView {
        ForEach (0..<5) { item in
          FruitCardView()
        } //: LOOP
      } //: TABVIEW
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
