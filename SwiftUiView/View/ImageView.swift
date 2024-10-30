//
//  ImageView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/29.
//

import SwiftUI

struct ImageView: View {
    var title: String
    
    var body: some View {
        Text(String(localized: "imageViewDescription"))
            .font(.title2)
            .padding(.bottom, 40)
        
        ScrollView(.vertical) {
            ScrollView(.horizontal) { // 横にスクロール
                LazyHStack(spacing: 32) {
                    VStack {
                        Text(String(localized: "imageViewSeaText"))
                        Image("sea") // assetsに入れた画像を表示
                            .resizable() // 画面サイズに合わせてリサイズ .stretchは省略できる
                            .aspectRatio(contentMode: .fit) // アスペクト比を考慮
                            .frame(width: 300.0) // 横のサイズを指定、縦は自動で決まる
                    }
                    
                    VStack {
                        Text(String(localized: "imageViewNightViewText"))
                        Image("nightView")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                    }
                    
                    VStack {
                        Text(String(localized: "imageViewSeaText"))
                        Image("sea")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .scaleEffect(1.8) // 画像を0.8倍拡大
                            .offset(x: -70, y: -30) // 表示しているところをずらす
                            .frame(width: 150.0, height: 200.0)
                            .clipped() // はみ出している分を切り取る
                    }
                    
                    VStack {
                        Text(String(localized: "imageViewNightViewText"))
                        Image("nightView")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .scaleEffect(1.8)
                            .offset(x: -70, y: -30)
                            .frame(width: 150.0, height: 200.0)
                            .clipped()
                    }
                }
                .padding()
            }
            
            NavigationLink(
                destination: ShapeView(title: String(localized: "shapeViewTitle"))
            ) {
                Text(String(localized: "imageViewGoShapeView"))
                    .frame(maxWidth: .infinity) // ボタンを横いっぱいに広げる
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .cornerRadius(8)
            }
            .padding()
        }
        
        .navigationBarTitle(title)
    }
}

#Preview {
    ImageView(title: String(localized: "imageViewTitle"))
}
