//
//  ContentView.swift
//  BindingExample
//
//  Created by David Razmadze on 6/10/24.
//

import SwiftUI

// Parent View
struct ContentView: View {
  
  @State private var score = 0
  
  // Random game
  var body: some View {
    VStack {
      Text("Score: \(score)")
      
      CustomLogicButton(score: $score)
    }
    .padding()
  }
}

#Preview {
  ContentView()
}

// Child View
struct CustomLogicButton: View {
  
  @Binding var score: Int
  
  var body: some View {
    Button(action: {
      updateScore()
    }, label: {
      Text("increase score")
    })
  }
  
  private func updateScore() {
    score += Int.random(in: 1...10)
  }
  
}
