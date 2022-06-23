//
//  ContentView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
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
    }//: NAVIGATION
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(fruits: fruitData)
  }
}
