//
//  PhotoListView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/12/11.
//

import SwiftUI

struct PhotoListView: View {
    
    private var title: String
    private var discripition: String
    private let photoDetailViewInfo: Screens.ScreenInformations = .photoDetailView
    
    init(title: String, discripition: String) {
        self.title = title
        self.discripition = discripition
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(self.discripition)
                    .font(.title2)
                
                List(PhotoDataDetail.photos) { item in
                    NavigationLink(
                        destination: PhotoDetailView(
                            title: self.photoDetailViewInfo.screenTitle,
                            discripition: self.photoDetailViewInfo.screenDescription,
                            photo: item
                        )
                    ) {
                        self.photoRow(photo: item)
                    }
                }
            }
            .padding()
            .navigationTitle(self.title)
        }
    }
    
    private func photoRow(photo: PhotoData) -> some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray))
            Text(photo.title)
            Spacer()
        }
    }
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .photoListView
    PhotoListView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
