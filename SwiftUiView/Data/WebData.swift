//
//  WebData.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/12/15.
//

import Foundation

struct WebData: Identifiable {
    var id = UUID()
    var name: String
    var url: String
    var favicon: String
}

struct WebDataDetail {
    static let webList: [WebData] = [
        WebData(name: String(localized: "appStore"), url: String(localized: "appStoreUrl"), favicon: "apple_store"),
        WebData(name: String(localized: "googlePlayStore"), url: String(localized: "googlePlayStoreUrl"), favicon: "google_play"),
        WebData(name: String(localized: "mentalRecord"), url: String(localized: "mentalRecordUrl"), favicon: "mental-record")
    ]
}
