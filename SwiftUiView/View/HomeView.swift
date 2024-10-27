//
//  ContentView.swift
//  SwiftUiView
//
//  Created by Seyamasan on 2024/10/26.
//

import SwiftUI

struct HomeView: View {
    let screens: [String] = [String(localized: "chapter2ViewTitle")]
    
    var body: some View {
        NavigationStack { // タイトルを表示するために使ってる
            ScrollView {
                VStack(spacing: 16) { // ボタン間のスペース
                    ForEach(Array(screens.enumerated()), id: \.element) { index, screen in
                        NavigationLink(destination: self.viewForScreen(screen)) {
                            Text(screen)
                                .frame(maxWidth: .infinity) // ボタンを横いっぱいに広げる
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .padding()
            
            .navigationTitle(String(localized: "homeViewTitle")) // タイトル
        }
    }
    
    // 各画面に対応するビューを返すメソッド
    @ViewBuilder
    func viewForScreen(_ screen: String) -> some View {
        switch screen {
        case String(localized: "chapter2ViewTitle"):
            Chapter2View(title: screen)
        default:
            Text(String(localized: "unknownScreen"))
        }
    }
}

#Preview {
    HomeView()
}
