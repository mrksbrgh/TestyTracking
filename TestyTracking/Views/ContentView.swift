//
//  ContentView.swift
//  TestyTracking
//
//  Created by Markus Bergh on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var viewModel: ContentViewModel
  
  var body: some View {
    VStack(spacing: 8) {
      HStack {
        Image(systemName: "swift")
          .imageScale(.large)
          .foregroundColor(.accentColor)
        
        Text("Testy Tracking")
      }
      
      Button(action: {
        viewModel.didTapAction()
      }, label: {
        Text("Action button")
      })
    }
    .onAppear {
      viewModel.didAppear()
    }
  }
}

#Preview {
  ContentView(viewModel: .preview)
}
