//
//  ContentViewTracker.swift
//  TestyTracking
//
//  Created by Markus Bergh on 2023-11-08.
//

final class ContentViewTracker: ContentViewTracking {
  var invocations: [String] = []

  func trackScreen() {
    // Send tracking
    invocations.append("trackScreenContentView")
  }

  func trackDidTapAction() {
    // Send tracking
    invocations.append("trackDidTapActionContentView")
  }
}
