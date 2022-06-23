//
//  DetailFootLink.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/24.
//

import SwiftUI

struct DetailFootLink: View {
  var body: some View {
    GroupBox() {
      HStack {
        Text("Content Source")
        
        Spacer()
        
        Link("Wikipadia", destination: URL(string: "https://wikipedia.com")!)
        Image(systemName: "arrow.up.right.square")
      }
      .font(.footnote)
    } //: GROUP BOX
  }
}

struct DetailFootLink_Previews: PreviewProvider {
  static var previews: some View {
    DetailFootLink()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
