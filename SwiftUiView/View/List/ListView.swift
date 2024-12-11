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
    private let popularSpotListViewInfo: Screens.ScreenInformations = .popularSpotListView
    private let prefectureListViewInfo: Screens.ScreenInformations = .prefectureListView
    private let photoListViewInfo: Screens.ScreenInformations = .photoListView
    
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
                self.popularSpotListViewButton
                self.prefectureListViewInfoButton
                self.photoListViewInfoButton
            }
        }
        
        .navigationBarTitle(title)
    }
    
    private var popularSpotListViewButton: some View {
        NavigationLink(
            destination: PopularSpotListView(
                title: self.popularSpotListViewInfo.screenTitle,
                discripition: self.popularSpotListViewInfo.screenDescription
            )
        ) {
            Text(String(localized: "goPopularSpotListView"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(.orange)
                .foregroundColor(.black)
                .cornerRadius(8)
        }
        .padding()
    }
    
    private var prefectureListViewInfoButton: some View {
        NavigationLink(
            destination: PrefectureListView(
                title: self.prefectureListViewInfo.screenTitle,
                discripition: self.prefectureListViewInfo.screenDescription
            )
        ) {
            Text(String(localized: "goPrefectureListView"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(.orange)
                .foregroundColor(.black)
                .cornerRadius(8)
        }
        .padding()
    }
    
    private var photoListViewInfoButton: some View {
        NavigationLink(
            destination: PhotoListView(
                title: self.photoListViewInfo.screenTitle,
                discripition: self.photoListViewInfo.screenDescription
            )
        ) {
            Text(String(localized: "goPhotoListView"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(.orange)
                .foregroundColor(.black)
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .listView
    ListView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
