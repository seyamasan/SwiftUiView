//
//  ContentView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack { // タイトルを表示するために使ってる
            ScrollView {
                // LazyVStackはスクロール時に必要なタイミングで子ビューを生成する
                LazyVStack(spacing: 16) { // ボタン間のスペース
                    ForEach(Screens.screenList, id: \.self) { screen in
                        NavigationLink(destination: self.viewForScreen(screen)) {
                            Text(screen.screenTitle)
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
    private func viewForScreen(_ screen: Screens.ScreenInformations) -> some View {
        switch screen {
        case .textView:
            TextView(title: screen.screenTitle, discripition: screen.screenDescription)
        case .imageView:
            ImageView(title: screen.screenTitle, discripition: screen.screenDescription)
        case .listView:
            ListView(title: screen.screenTitle, discripition: screen.screenDescription)
        default:
            Text(String(localized: "unknownScreen"))
        }
    }
}

#Preview {
    HomeView()
}
