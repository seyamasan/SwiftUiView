//
//  TextView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/27.
//

import SwiftUI

struct TextView: View {
    var title: String
    
    var body: some View {
        Text(String(localized: "textViewDescription"))
            .font(.title2)
            .padding(.bottom, 40)
        
        ScrollView {
            VStack { // VStackで縦に整列
                Image(systemName: "globe")
                    .imageScale(.large) // スケールをラージにする
                    .foregroundColor(.blue) // 青色にする
                
                ForEach(1...3, id: \.self) { index in
                    Text("\(index): " + String(localized: "textVStack"))
                        .font(.title) // 書体をtitleに設定
                        .fontWeight(.thin) // フォントの太さをthinに設定
                        .border(.green, width: 2.0) // 枠の色と太さ設定
                        .background(.cyan) // 背景の色変更
                        .padding(.top) // 上に余白を開ける
                        
                }
                
                HStack { // HStackで横並び
                    ForEach(1...3, id: \.self) { index in
                        Text("\(index): " + String(localized: "textHStack"))
                            .foregroundColor(.red) // 文字を赤色に設定
                            .font(.system(size: 12.0)) // テキストサイズ変更
                            .border(.orange, width: 1.0)
                            .padding(.all) // 上下左右に余白
                    }
                }
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text(String(localized: "textWontToEatRamen"))
                    Text(String(localized: "textWontToEatRamenEn"))
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
    TextView(title: String(localized: "textViewTitle"))
}
