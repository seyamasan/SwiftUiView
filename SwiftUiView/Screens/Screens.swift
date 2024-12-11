//
//  Screens.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/11/09.
//

import Foundation

class Screens {
    enum ScreenInformations: String, ScreenInformation {
        case textView = "textView"
        case imageView = "imageView"
        case shapeView = "shapeView"
        case listView = "listView"
        case popularSpotListView = "popularSpotListView"
        case prefectureListView = "prefectureListView"
        case photoListView = "photoListView"
        
        // ScreenInformationを実装
        var screenTitle: String {
            NSLocalizedString("\(self.rawValue)Title", comment: "The title of the screen")
        }
        
        var screenDescription: String {
            NSLocalizedString("\(self.rawValue)Description", comment: "The description of the home screen")
        }
    }
    
    static let screenList: [Screens.ScreenInformations] = [
        .textView,
        .imageView,
        .listView
    ]
}
