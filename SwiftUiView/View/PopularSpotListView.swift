//
//  PopularSpotListView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/11/12.
//

import SwiftUI

struct PopularSpotListView: View {
    private var title: String
    private var discripition: String
    
    @State private var searchText: String = "" // @Stateで値を監視
    
    let spots = [
        String(localized: "ramenJiro"),
        String(localized: "kirinzi"),
        String(localized: "menyaKirameki"),
        String(localized: "sugari"),
        String(localized: "kibo"),
        String(localized: "yumekata")
    ]
    
    var searchResults: [String] {
        if self.searchText.isEmpty {
            return self.spots
        } else {
            // 入力された文字をフィルターにかける
            return self.spots.filter { $0.contains(self.searchText) }
        }
    }
    
    init(title: String, discripition: String) {
        self.title = title
        self.discripition = discripition
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(self.discripition)
                    .font(.title2)
                
                List {
                    ForEach(self.searchResults, id: \.self) { spot in
                        Text(spot)
                    }
                }
                .searchable(text: $searchText, prompt: String(localized: "popularSpotListViewSearchPrompt")) // 検索ボックス
                .keyboardType(.default)
            }
            .padding()
            .navigationTitle(title)
        }
        .scrollDismissesKeyboard(.immediately) // スワイプでキーボードを下げることができる
    }
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .popularSpotListView
    PopularSpotListView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
