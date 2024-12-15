//
//  WebListView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/12/15.
//

import SwiftUI

struct WebListView: View {
    
    private var title: String
    private var discripition: String
    
    init(title: String, discripition: String) {
        self.title = title
        self.discripition = discripition
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(self.discripition)
                    .font(.title2)
                
                List(WebDataDetail.webList) { item in
                    HStack {
                        Image(item.favicon)
                            .resizable()
                            .frame(width: 40, height: 40)
                        
                        if let url = URL(string: item.url),
                           UIApplication.shared.canOpenURL(url)
                        {
                            // urlが有効な場合
                            Link(
                                item.name,
                                destination: url
                            ) // 第一引数(名前)、第二引数(URL)
                        } else {
                            // urlが無効な場合
                            Text(item.name)
                                .foregroundColor(.gray)
                            + Text("URL Error!!!")
                                .foregroundColor(.red)
                                .italic()
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
    let screenInfo: Screens.ScreenInformations = .webListView
    WebListView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
