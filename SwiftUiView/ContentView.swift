//
//  ContentView.swift
//  SwiftUiView
//
//  Created by Seyamasan on 2024/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Git Test!")
            }
            .padding()
            
            .navigationTitle("SwiftUI View")
        }
    }
}

#Preview {
    ContentView()
}
