//
//  ContentView.swift
//  WeatherApp
//
//  Created by İreemmmm on 7.09.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .cyan, .cyan, .white]), startPoint: .topTrailing, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("San Francisco, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                 
            }
        }
    }
}

#Preview {
    ContentView()
}
