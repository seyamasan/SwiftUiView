//
//  PrefectureListView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/11/23.
//

import SwiftUI

struct PrefectureListView: View {
    private var title: String
    private var discripition: String
    
    let shikoku = [
        String(localized: "tokushima"),
        String(localized: "kagawa"),
        String(localized: "ehime"),
        String(localized: "kochi")
    ]
    
    let kyusyu = [
        String(localized: "fukuoka"),
        String(localized: "saga"),
        String(localized: "nagasaki"),
        String(localized: "kumamoto"),
        String(localized: "oita"),
        String(localized: "miyazaki"),
        String(localized: "kagoshima")
    ]
    
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
                    Section(header: Text(String(localized: "shikoku"))) {
                        ForEach(shikoku, id: \.self) { prefecture in
                            Text(prefecture)
                        }
                    }
                    
                    Section(header: Text(String(localized: "kyusyu"))) {
                        ForEach(kyusyu, id: \.self) { prefecture in
                            Text(prefecture)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle(self.title)
        }
    }
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .prefectureListView
    PrefectureListView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
