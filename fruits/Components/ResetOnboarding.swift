//
//  ResetOnboarding.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/25.
//

import SwiftUI

struct ResetOnboarding: View {
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  var body: some View {
    VStack {
      Divider()
        .padding(.vertical, 4)
      
      Text("This button will let you toggle the onBoarding guide screen, please feel free to try it.")
        .padding(.vertical, 8)
        .font(.footnote)
        .foregroundColor(.secondary)
        .multilineTextAlignment(.leading)
      
      Toggle(isOn: $isOnboarding) {
        if isOnboarding {
          Text("Restarted".uppercased())
            .fontWeight(.bold)
            .foregroundColor(.green)
        } else {
          Text("Restart".uppercased())
            .fontWeight(.bold)
            .foregroundColor(.secondary)
        }
      }
      .padding()
      .background(
        Color(UIColor.tertiarySystemBackground)
          .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
      )
    }
  }//: VSTACK
}

struct ResetOnboarding_Previews: PreviewProvider {
  static var previews: some View {
    ResetOnboarding()
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
