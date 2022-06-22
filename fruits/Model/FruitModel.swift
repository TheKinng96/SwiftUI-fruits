//
//  FruitModel.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/22.
//

import SwiftUI

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}

