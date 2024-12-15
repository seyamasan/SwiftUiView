//
//  ListView.swift
//  SwiftUiView
//
//  Created by seyamasan 2024/11/10.
//

import SwiftUI

struct ListView: View {
    private var title: String
    private var discripition: String
    private let screenInfoList: [Screens.ScreenInformations] = Screens.listViewSubScreens
    
    init(title: String, discripition: String) {
        self.title = title
        self.discripition = discripition
    }
    
    var body: some View {
        Text(self.discripition)
            .font(.title2)
            .padding(.bottom, 40)
        
        ScrollView {
            VStack(spacing: 16) {
                ForEach(screenInfoList, id: \.self) { screenInfo in
                    navigationButton(for: screenInfo)
                }
            }
        }
        
        .navigationBarTitle(title)
    }
    
    private func navigationButton(
        for screenInfo: Screens.ScreenInformations
    ) -> some View {
        NavigationLink(
            destination: destinationView(for: screenInfo)
        ) {
            Text(NSLocalizedString("\(screenInfo.rawValue)Go", comment: "The title of the screen"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(.orange)
                .foregroundColor(.black)
                .cornerRadius(8)
        }
        .padding()
    }
    
    @ViewBuilder
    private func destinationView(for screenInfo: Screens.ScreenInformations) -> some View {
        switch screenInfo {
        case .popularSpotListView:
            PopularSpotListView(title: screenInfo.screenTitle, discripition: screenInfo.screenDescription)
        case .prefectureListView:
            PrefectureListView(title: screenInfo.screenTitle, discripition: screenInfo.screenDescription)
        case .photoListView:
            PhotoListView(title: screenInfo.screenTitle, discripition: screenInfo.screenDescription)
        case .webListView:
            WebListView(title: screenInfo.screenTitle, discripition: screenInfo.screenDescription)
        default:
            EmptyView()
        }
    }
    
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .listView
    ListView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
