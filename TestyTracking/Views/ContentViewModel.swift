//
//  ContentViewModel.swift
//  TestyTracking
//
//  Created by Markus Bergh on 2023-11-08.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
  let tracker: ContentViewTracking

  init(tracker: ContentViewTracking = ContentViewTracker()) {
    self.tracker = tracker
  }
}

// MARK: - View cycle

extension ContentViewModel {
  func didAppear() {
    tracker.trackScreen()
  }
}

// MARK: - Action

extension ContentViewModel {
  func didTapAction() {
    tracker.trackDidTapAction()
  }
}

// MARK: - Preview

extension ContentViewModel {
  static var preview: ContentViewModel {
    .init(tracker: ContentViewTracker())
  }
}
