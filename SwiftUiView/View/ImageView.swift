//
//  ImageView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/29.
//

import SwiftUI

struct ImageView: View {
    private var title: String
    private var discripition: String
    private let shapeViewInfo: Screens.ScreenInformations = .shapeView
    
    init(title: String, discripition: String) {
        self.title = title
        self.discripition = discripition
    }
    
    var body: some View {
        Text(self.discripition)
            .font(.title2)
            .padding(.bottom, 40)
        
        ScrollView(.vertical) {
            ScrollView(.horizontal) { // 横にスクロール
                self.horizontalImageView1
            }
            
            ScrollView(.horizontal) {
                self.horizontalImageView2
            }
            
            NavigationLink(
                destination: ShapeView(
                    title: self.shapeViewInfo.screenTitle,
                    discripition: self.shapeViewInfo.screenDescription
                )
            ) {
                Text(String(localized: "imageViewGoShapeView"))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.orange)
                    .foregroundColor(.black)
                    .cornerRadius(8)
            }
            .padding()
        }
        
        .navigationBarTitle(title)
    }
    
    private var horizontalImageView1: some View {
        LazyHStack(spacing: 32) {
            VStack {
                HStack {
                    Image(systemName: "camera") // SF Symbol
                        .font(.system(size: 20))
                        .symbolRenderingMode(.monochrome) // 一色で描画
                    
                    Text(String(localized: "imageViewSeaText"))
                }
                
                Image("sea") // assetsに入れた画像を表示
                    .resizable() // 画面サイズに合わせてリサイズ .stretchは省略できる
                    .aspectRatio(contentMode: .fit) // アスペクト比を考慮
                    .frame(width: 300.0) // 横のサイズを指定、縦は自動で決まる
            }
            
            VStack {
                HStack {
                    Image(systemName: "camera")
                        .font(.system(size: 20))
                        .foregroundStyle(.blue.gradient) // symbolを青色に指定
                    
                    Text(String(localized: "imageViewNightViewText"))
                }
                
                Image("nightView")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0)
            }
            
            VStack {
                HStack {
                    Image(systemName: "camera.on.rectangle")
                        .font(.system(size: 20))
                        .symbolRenderingMode(.hierarchical) // 階層に分けて色を描画
                    
                    Text(String(localized: "imageViewSeaText"))
                }
                
                Image("sea")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaleEffect(1.8) // 画像を0.8倍拡大
                    .offset(x: -70, y: -30) // 表示しているところをずらす
                    .frame(width: 150.0, height: 200.0)
                    .clipped() // はみ出している分を切り取る
            }
            
            VStack {
                HStack {
                    Image(systemName: "camera.on.rectangle")
                        .font(.system(size: 20))
                        .symbolRenderingMode(.hierarchical)
                        .foregroundStyle(.blue)
                    
                    Text(String(localized: "imageViewNightViewText"))
                }
                
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
    
    private var horizontalImageView2: some View {
        LazyHStack(spacing: 32) {
            VStack {
                HStack {
                    Image(systemName: "cloud.moon.rain.fill")
                        .font(.system(size: 20))
                        .symbolRenderingMode(.palette) // パレットレンダリングモード
                        .foregroundStyle(.gray, .yellow, .cyan) // 三色指定
                    
                    Text(String(localized: "imageViewJellyfishText"))
                }
                
                Image("jellyfish")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300.0)
                    .clipShape(Circle()) // 丸くクリップ
                    .shadow(color: .blue, radius: 30) // 青色の影
            }
            
            VStack {
                HStack {
                    Image(systemName: "cloud.moon.rain.fill")
                        .font(.system(size: 20))
                        .symbolRenderingMode(.multicolor) // マルチカラーレンダリングモード
                        .padding()
                        .background( // 背景を指定
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.yellow)
                        )
                    
                    Text(String(localized: "imageViewFishText"))
                }
                
                Image("fish")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300.0)
                    .clipShape(RoundedRectangle(cornerRadius: 20)) // 角丸四角形でクリップ
                    .grayscale(1.0) // グレースケール(0.0〜1.0の範囲)
            }
            
            VStack {
                HStack {
                    Image(systemName: "water.waves", variableValue: 0.5) // 可変カラーの値を指定
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                    
                    Text(String(localized: "imageViewJellyfishText"))
                }
                
                Image("jellyfish")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300.0)
                    .clipShape(Circle())
                    .blur(radius: 5) // ブラーでぼかす
            }
            
            VStack {
                Label(String(localized: "imageViewBlurText"), systemImage: "moon.haze.fill")
                    .foregroundStyle(.blue)
                    .symbolRenderingMode(.multicolor)
                Image("fish")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300.0)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .blur(radius: 5, opaque: true) // opaqueをtrueにすると境界線はボケない
            }
        }
        .padding()
    }
}

#Preview {
    let screenInfo: Screens.ScreenInformations = .imageView
    ImageView(
        title: screenInfo.screenTitle,
        discripition: screenInfo.screenDescription
    )
}
