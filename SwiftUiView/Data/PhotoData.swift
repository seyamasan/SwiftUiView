//
//  PhotoData.swift
//  SwiftUiView
//
//  Created by seyamasan on 2024/12/12.
//

import Foundation

struct PhotoData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}

var photoArray = [
    PhotoData(imageName: "8184", title: String(localized: "photoPizza")),
    PhotoData(imageName: "8185", title: String(localized: "photoCake")),
    PhotoData(imageName: "8186", title: String(localized: "photoDolphin")),
    PhotoData(imageName: "8187", title: String(localized: "photoSettingSun")),
    PhotoData(imageName: "8188", title: String(localized: "photoOpenFire")),
    PhotoData(imageName: "8189", title: String(localized: "photoTogetsukyoBridge")),
    PhotoData(imageName: "8190", title: String(localized: "photoBeach")),
    PhotoData(imageName: "8191", title: String(localized: "photoCurry")),
    PhotoData(imageName: "8192", title: String(localized: "photoGyoza")),
    PhotoData(imageName: "8193", title: String(localized: "photoChicken")),
    PhotoData(imageName: "8194", title: String(localized: "photoCambodiaNight")),
    PhotoData(imageName: "8195", title: String(localized: "photoSunsetInCambodia")),
    PhotoData(imageName: "8196", title: String(localized: "photoAngkorWat")),
    PhotoData(imageName: "8197", title: String(localized: "photoFavoriteBird"))
]
