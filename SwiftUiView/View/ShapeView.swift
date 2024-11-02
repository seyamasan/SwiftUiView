//
//  ShapeView.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/10/31.
//

import SwiftUI

struct ShapeView: View {
    var title: String
    
    var body: some View {
        Text(String(localized: "shapeViewDescription"))
            .font(.title2)
            .padding(.bottom, 40)
        
        ScrollView() {
            VStack(spacing: 32) {
                Circle() // 円を描画
                    .foregroundColor(.red)
                    .frame(width: 200, height: 200)
                
                Ellipse() // 楕円を描画
                    .foregroundColor(.pink)
                    .frame(width: 200, height: 400)
                
                Rectangle() // 四角形を描画
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                
                RoundedRectangle(cornerRadius: 30) // 角丸四角形を描画
                    .foregroundColor(.green)
                    .frame(width: 200, height: 200)
                
                Circle() // カスタムカラーの円を描画
                    .foregroundColor(Color("BlueViolet"))
                    .frame(width: 200, height: 200)
                
                VStack(spacing: 10) {
                    RoundedRectangle(cornerRadius: 20) // グラデーションの角丸四角形
                        .frame(width: 200, height: 200)
                        .foregroundStyle(
                            .blue
                                .gradient // グラデーション
                                .shadow(.drop(radius: 30)) // 外側に影
                        )
                    
                    Text(String(localized: "shapeViewGradient"))
                        .font(.title)
                        .bold()
                        .foregroundStyle(
                            .yellow
                                .gradient
                                .shadow(.inner(radius: 5)) // 内側に影
                        )
                }
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 200)
                    .foregroundStyle(
                        LinearGradient( // 線形グラデーション
                            gradient: Gradient(colors: [.green, .yellow, .red]),
                            startPoint: .topLeading, // 左上からスタート
                            endPoint: .bottomTrailing // 右下斜めに向けて
                        )
                    )
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 200)
                    .foregroundStyle(
                        LinearGradient( // 線形グラデーション
                            gradient: Gradient(colors: [.blue, .yellow]),
                            // 部分的にクラデーション
                            startPoint: .init(x: 0, y: 0.3), // 上から3割の高さ（y軸）からスタート
                            endPoint: .init(x: 0, y: 0.7) // 上から7割の高さまで
                        )
                    )
                
                Rectangle()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(
                        AngularGradient( // 円すい状のグラデーション
                            gradient: Gradient(colors: [.yellow, .red, .blue, .yellow]),
                            center: .init(x: 0.5, y: 0.2), // 中心位置
                            startAngle: .degrees(0), // 0度からスタート
                            endAngle: .degrees(180) // 180度まで
                        )
                    )
                
                Rectangle()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(
                        RadialGradient( // 放射状のグラデーション
                            gradient: Gradient(colors: [.yellow, .red, .blue]),
                            center: .bottom,
                            startRadius: 0, // 中心位置からスタート
                            endRadius: 250 // 半径250の範囲まで
                        )
                    )
                
                ZStack { // 三つ重ねて描画
                    Ellipse()
                        .stroke(lineWidth: 4) // 線で描画
                        .foregroundColor(.pink) // 線の色指定
                        .frame(width: 100, height: 300)
                    Ellipse()
                        .stroke(lineWidth: 4)
                        .foregroundColor(.purple)
                        .frame(width: 100, height: 300)
                        .rotationEffect(.degrees(30), anchor: .bottom) // bottomを中心に30度回転
                    Ellipse()
                        .stroke(lineWidth: 4)
                        .foregroundColor(.green)
                        .frame(width: 100, height: 300)
                        .rotationEffect(.degrees(-30), anchor: .bottom)
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 100, height: 100)
                        .position(x: 120, y: 150) // 配置位置指定
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: 100, height: 100)
                        .position(x: 300, y: 350)
                }
                .frame(height: 400) // 高さをy軸を越えるように指定しないと表示外になる
                
            }
            .frame(maxWidth: .infinity)
        }
        
        .navigationBarTitle(title)
    }
}

#Preview {
    ShapeView(title: String(localized: "shapeViewTitle"))
}
