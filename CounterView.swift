//
//  CounterView.swift
//  BindingExample
//
//  Created by David Razmadze on 6/10/24.


import SwiftUI

// Parent View
struct CounterView: View {
  
  @State private var counter = 0
  
  // Counter Example +1
  var body: some View {
    VStack {
      Text("Counter: \(counter)")
      
      // allow changes to the counter variable using the $ prefix
      CounterButton(counter: $counter)
    }
    .padding()
  }
}

#Preview {
  CounterView()
}

// Child View
struct CounterButton: View {
  
  @Binding var counter: Int
  
  var body: some View {
    Button(action: {
      counter += 1
    }, label: {
      Text("Increment")
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
    })
  }
  
}
