//
//  fruitsApp.swift
//  fruits
//
//  Created by Feng Yuan Yap on 2022/06/21.
//

import SwiftUI

@main
struct fruitsApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
