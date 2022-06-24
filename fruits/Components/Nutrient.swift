//
//  Nutrient.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/24.
//

import SwiftUI

struct Nutrient: View {
  var fruit: Fruit
  let nutrients: [String] = [
    "Energy",
    "Sugar",
    "Fat",
    "Protein",
    "Vitamins",
    "Minerals"
  ]
  
  var body: some View {
    GroupBox() {
      DisclosureGroup("Nutritional value per 100g") {
        ForEach(0 ..< nutrients.count, id: \.self) { item in
          Divider()
            .padding(.vertical, 2)

          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(nutrients[item])
            }
            .foregroundColor(fruit.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer()
            
            Text(fruit.nutrition[item])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    } //: BOX
  }
}

struct Nutrient_Previews: PreviewProvider {
  static var previews: some View {
    Nutrient(fruit: fruitData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
