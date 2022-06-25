//
//  SettingView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/24.
//

import SwiftUI

struct SettingView: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // MARK: - SECTION 1
          GroupBox(
            label: SettingLabel(labelText: "Fructus", imageLabel: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }
          
          // MARK: - SECTION 2
          // MARK: - SECTION 3
          GroupBox(
            label: SettingLabel(labelText: "Application", imageLabel: "apps.iphone")
          ) {
            SettingRow(name: "Developer", content: "Gen")
            SettingRow(name: "Designer", content: "Robert Petras")
            SettingRow(name: "Compatibility", content: "iOS 14")
            SettingRow(name: "Website", linkLabel: "Github", linkDestination: "github.com/TheKinng96")
            SettingRow(name: "Twitter", linkLabel: "@gen_yap", linkDestination: "twitter.com/gen_yap")
            SettingRow(name: "SwiftUI", content: "2.0")
            SettingRow(name: "Version", content: "1.1.0")
          }
        } //: VSTACK
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }, label: {
              Image(systemName: "xmark")
            })
        )
        .padding()
      } //: SCROLLVIEW
    } //: NAVIGATION
  }
}

struct SettingView_Previews: PreviewProvider {
  static var previews: some View {
    SettingView()
      .preferredColorScheme(.dark)
  }
}
