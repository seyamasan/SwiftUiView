//
//  Chapter2View.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/27.
//
// チャプター2の勉強用画面

import SwiftUI

struct Chapter2View: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(String(localized: "chapter2ViewDescription"))
                .font(.title2)
                .padding()
            Spacer()
        }
        .navigationTitle(title)
    }
}

#Preview {
    Chapter2View(title: String(localized: "chapter2ViewTitle"))
}
