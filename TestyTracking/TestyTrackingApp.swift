//
//  TestyTrackingApp.swift
//  TestyTracking
//
//  Created by Markus Bergh on 2023-11-08.
//

import SwiftUI

@main
struct TestyTrackingApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView(viewModel: ContentViewModel())
    }
  }
}
