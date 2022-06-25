//
//  SettingLabel.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/24.
//

import SwiftUI

struct SettingLabel: View {
  var labelText: String
  var imageLabel: String
  
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: imageLabel)
    }
  }
}

struct SettingLabel_Previews: PreviewProvider {
  static var previews: some View {
    SettingLabel(labelText: "Frutos", imageLabel: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
