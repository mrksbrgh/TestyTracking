//
//  ContentViewTracking.swift
//  Testy
//
//  Created by Markus Bergh on 2023-11-08.
//

public protocol ContentViewTracking {
  var invocations: [String] { get }

  func trackScreen()
  func trackDidTapAction()
}
