//
//  PhotoDetailView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/12/14.
//

import SwiftUI

struct PhotoDetailView: View {
    
    private var title: String
    private var discripition: String
    private var photo: PhotoData
    
    init(
        title: String,
        discripition: String,
        photo: PhotoData
    ) {
        self.title = title
        self.discripition = discripition
        self.photo = photo
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(self.discripition)
                    .font(.title2)
                
                Image(self.photo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(self.photo.title)
                Spacer()
            }
            .padding()
            .navigationTitle(self.title)
        }
    }
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .photoDetailView
    PhotoDetailView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription,
        photo: PhotoData(imageName: "8184", title: String(localized: "photoPizza"))
    )
}
