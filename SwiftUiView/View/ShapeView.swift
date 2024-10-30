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
        
        Circle() // 円を描画
            .foregroundColor(Color.orange)
        
        .navigationBarTitle(title)
    }
}

#Preview {
    ShapeView(title: String(localized: "shapeViewTitle"))
}
