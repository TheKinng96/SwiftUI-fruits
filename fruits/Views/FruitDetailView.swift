//
//  FruitDetailView.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/22.
//

import SwiftUI

struct FruitDetailView: View {
  var fruit: Fruit
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // MARK: - HEADER
          HeaderView(fruit: fruit)
          
          VStack(alignment: .leading, spacing: 20) {
            // MARK: - TITLE
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            // MARK: - HEADLINE
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // MARK: - NUTRIENTS
            // MARK: - SUBHEADLINE
            Text("Learn more about \(fruit.title)".uppercased())
              .foregroundColor(fruit.gradientColors[1])
            
            // MARK: - DESCRIPTION
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            
            // MARK: - LINK
            DetailFootLink()
              .padding(.top, 10)
              .padding(.bottom, 40)
          }// :VSTACK BODY
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }//: VSTACK
        .navigationBarTitle(fruit.title, displayMode: .inline)
        .navigationBarHidden(true)
      }//: SCROLL
      .edgesIgnoringSafeArea(.top)
    }//: NAVIGATION
  }
}

struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitData[1])
  }
}
