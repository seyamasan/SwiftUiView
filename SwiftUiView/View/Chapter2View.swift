//
//  Chapter2View.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/27.
//
// チャプター2の勉強用画面

import SwiftUI

struct Chapter2View: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(String(localized: "chapter2ViewDescription"))
                .font(.title2)
        }.padding(.bottom, 40)
        
        ScrollView {
            VStack { // VStackで縦に整列
                Image(systemName: "globe")
                    .imageScale(.large) // スケールをラージにする
                    .foregroundColor(.blue) // 青色にする
                
                ForEach(1...3, id: \.self) { index in
                    Text("\(index): " + String(localized: "chapter2VStack"))
                        .font(.title) // 書体をtitleに設定
                        .fontWeight(.thin) // フォントの太さをthinに設定
                        .border(Color.green, width: 2.0) // 枠の色と太さ設定
                        .background(Color.cyan) // 背景の色変更
                        .padding(.top) // 上に余白を開ける
                        
                }
                
                HStack { // HStackで横並び
                    ForEach(1...3, id: \.self) { index in
                        Text("\(index): " + String(localized: "chapter2HStack"))
                            .foregroundColor(Color.red) // 文字を赤色に設定
                            .font(.system(size: 12.0)) // テキストサイズ変更
                            .border(Color.orange, width: 1.0)
                            .padding(.all) // 上下左右に余白
                    }
                }
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text(String(localized: "chapter2WontToEatRamen"))
                    Text(String(localized: "chapter2WontToEatRamenEn"))
                        .italic() // イタリック体で表示
                        .offset(x: 30, y: 0) // x軸を30ずらす
                    Spacer()
                }
            }
        }
        
        
        .navigationTitle(title)
    }
}

#Preview {
    Chapter2View(title: String(localized: "chapter2ViewTitle"))
}
