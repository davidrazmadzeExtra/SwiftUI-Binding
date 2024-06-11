//
//  ToggleView.swift
//  BindingExample
//
//  Created by David Razmadze on 6/10/24.
//

import SwiftUI

// Parent View
struct ToggleViewContent: View {
  
  @State private var isOn = false
  
  // Toggle example
  var body: some View {
    VStack {
      ToggleView(isOn: $isOn)
      
      Text(isOn ? "Switch is ON" : "Switch is OFF")
        .padding()
    }
    .padding()
  }
}

#Preview {
  ToggleViewContent()
}

// Child View
struct ToggleView: View {
  @Binding var isOn: Bool
  
  var body: some View {
    Toggle(isOn: $isOn, label: {
      Text("Toggle Switch")
    })
    .padding()
  }
}
