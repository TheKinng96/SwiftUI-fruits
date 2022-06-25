//
//  SettingRow.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/24.
//

import SwiftUI

struct SettingRow: View {
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  var body: some View {
    VStack {
      Divider()
        .padding(.vertical, 4)
      HStack {
        Text(name)
          .foregroundColor(.gray)
        Spacer()
        
        if content != nil {
          Text(content!)
        } else if linkLabel != nil && linkDestination != nil {
          Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
          Image(systemName: "arrow.up.right.square")
            .foregroundColor(.pink)
        } else {
          EmptyView()
        }
      }
    }
  }
}

struct SettingRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SettingRow(name: "Developer", content: "Gen")
        .previewLayout(.fixed(width: 375, height: 60))
      .padding()
      SettingRow(name: "Twitter", linkLabel: "Twitter", linkDestination: "twitter.com/gen_yap")
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
  }
}
