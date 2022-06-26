//
//  ContentView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
  @State private var isSettingOpened: Bool = false
  var fruits: [Fruit] = fruitData

  var body: some View {
    NavigationView {
      List(fruits.shuffled()) { item in
        NavigationLink(destination: FruitDetailView(fruit: item)) {
          FruitRowView(fruit: item)
            .padding(.vertical, 4)
        }
      }
      .navigationTitle("Fruits")
      .navigationBarItems(
        trailing: Button(action: {
          isSettingOpened = true
        }, label: {
          Image(systemName: "slider.horizontal.3")
        }) //: BUTTON
          .sheet(isPresented: $isSettingOpened, content: {
            SettingView()
          })
      )
    }//: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(fruits: fruitData)
  }
}
