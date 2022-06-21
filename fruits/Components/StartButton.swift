//
//  StartButton.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/21.
//

import SwiftUI

struct StartButton: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
    var body: some View {
      Button {
        print("Exiting onboarding")
      } label: {
        HStack(spacing: 8) {
          Text("Start")
          
          Image(systemName: "arrow.right.circle")
            .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
      } //: BUTTON
      .accentColor(.white)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
      StartButton()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
    }
}
