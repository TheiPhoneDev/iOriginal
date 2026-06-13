//
//  iPadViewDataModel.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 11/25/24.
//

import Foundation
import SwiftUI

struct iPadViewDataModel: Identifiable {
    var id = UUID()
    var ipadModelImage: String
    var ipadModelName: String
    var ipadModelYear: String
    var attachedView: AnyView
    var category: String

}


let iPadViewDataModelList: [iPadViewDataModel] = [
    
    //iPads
    iPadViewDataModel(ipadModelImage: "iPad 1", ipadModelName: "iPad 1st gen", ipadModelYear: "2010", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 1")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 2", ipadModelName: "iPad 2nd gen", ipadModelYear: "2011", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 2")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 3", ipadModelName: "iPad 3rd gen", ipadModelYear: "2012", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 3")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 4", ipadModelName: "iPad 4th gen", ipadModelYear: "2012", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 4")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 5", ipadModelName: "iPad 5th gen", ipadModelYear: "2017", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 5")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 6", ipadModelName: "iPad 6th gen", ipadModelYear: "2018", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 6")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 7", ipadModelName: "iPad 7th gen", ipadModelYear: "2019", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 7")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 8", ipadModelName: "iPad 8th gen", ipadModelYear: "2020", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 8")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 9", ipadModelName: "iPad 9th gen", ipadModelYear: "2021", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 9")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "iPad 10", ipadModelName: "iPad 10th gen", ipadModelYear: "2022", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "iPad 10")), category: "Normal"),
    iPadViewDataModel(ipadModelImage: "A16 iPad", ipadModelName: "A16 iPad", ipadModelYear: "2025", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadCollection, ipadModelName: "A16 iPad")), category: "Normal"),
    
    
    //iPad Mini
    iPadViewDataModel(ipadModelImage: "iPad Mini 1", ipadModelName: "iPad Mini 1st gen", ipadModelYear: "2012", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 1")), category: "Mini"),
    iPadViewDataModel(ipadModelImage: "iPad Mini 2", ipadModelName: "iPad Mini 2nd gen", ipadModelYear: "2013", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 2")), category: "Mini"),
    iPadViewDataModel(ipadModelImage: "iPad Mini 3", ipadModelName: "iPad Mini 3rd gen", ipadModelYear: "2014", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 3")), category: "Mini"),
    iPadViewDataModel(ipadModelImage: "iPad Mini 4", ipadModelName: "iPad Mini 4th gen", ipadModelYear: "2015", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 4")), category: "Mini"),
    iPadViewDataModel(ipadModelImage: "iPad Mini 5", ipadModelName: "iPad Mini 5th gen", ipadModelYear: "2019", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 5")), category: "Mini"),
    iPadViewDataModel(ipadModelImage: "iPad Mini 6", ipadModelName: "iPad Mini 6th gen", ipadModelYear: "2021", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 6")), category: "Mini"),
    iPadViewDataModel(ipadModelImage: "iPad Mini 7", ipadModelName: "iPad Mini 7th gen (A17 Pro)", ipadModelYear: "2024", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadMiniCollection, ipadModelName: "iPad Mini 7")), category: "Mini"),
    
    
    //iPad Airs
    iPadViewDataModel(ipadModelImage: "iPad Air 1", ipadModelName: "iPad Air 1st gen", ipadModelYear: "2013", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 1")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 2", ipadModelName: "iPad Air 2nd gen", ipadModelYear: "2014", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 2")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 3", ipadModelName: "iPad Air 3rd gen", ipadModelYear: "2019", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 3")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 4", ipadModelName: "iPad Air 4th gen", ipadModelYear: "2020", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 4")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 5", ipadModelName: "iPad Air 5th gen", ipadModelYear: "2022", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 5")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 11 M2", ipadModelName: "iPad Air 11-inch M2", ipadModelYear: "2024", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 11 M2")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 13 M2", ipadModelName: "iPad Air 13-inch M2", ipadModelYear: "2024", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 13 M2")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 11 M3", ipadModelName: "iPad Air 11-inch M3", ipadModelYear: "2025", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 11 M3")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 13 M3", ipadModelName: "iPad Air 13-inch M3", ipadModelYear: "2025", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 13 M3")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 11 M4", ipadModelName: "iPad Air 11-inch M4", ipadModelYear: "2026", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 11 M4")), category: "Air"),
    iPadViewDataModel(ipadModelImage: "iPad Air 13 M4", ipadModelName: "iPad Air 13-inch M4", ipadModelYear: "2026", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadAirCollection, ipadModelName: "iPad Air 13 M4")), category: "Air"),
    
    
    //iPad Pros
    iPadViewDataModel(ipadModelImage: "iPad Pro 12.9 1st gen", ipadModelName: "iPad Pro 12.9-inch 1st gen", ipadModelYear: "2015", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 12.9 1st gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 9.7", ipadModelName: "iPad Pro 9.7-inch", ipadModelYear: "2016", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 9.7")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 10.5", ipadModelName: "iPad Pro 10.5-inch", ipadModelYear: "2017", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 10.5")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 12.9 2nd gen", ipadModelName: "iPad Pro 12.9-inch 2nd gen", ipadModelYear: "2017", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 12.9 2nd gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 11 1st gen", ipadModelName: "iPad Pro 11-inch 1st gen", ipadModelYear: "2018", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 11 1st gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 12.9 3rd gen", ipadModelName: "iPad Pro 12.9-inch 3rd gen", ipadModelYear: "2018", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 12.9 3rd gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 11 2nd gen", ipadModelName: "iPad Pro 11-inch 2nd gen", ipadModelYear: "2020", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 11 2nd gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 12.9 4th gen", ipadModelName: "iPad Pro 12.9-inch 4th gen", ipadModelYear: "2020", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 12.9 4th gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 11 3rd gen", ipadModelName: "iPad Pro 11-inch 3rd gen", ipadModelYear: "2021", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 11 3rd gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 12.9 5th gen", ipadModelName: "iPad Pro 12.9-inch 5th gen", ipadModelYear: "2021", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 12.9 5th gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 11 4th gen", ipadModelName: "iPad Pro 11-inch 4th gen", ipadModelYear: "2022", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 11 4th gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 12.9 6th gen", ipadModelName: "iPad Pro 12.9-inch 6th gen", ipadModelYear: "2022", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 12.9 6th gen")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 11 M4", ipadModelName: "iPad Pro 11-inch M4", ipadModelYear: "2024", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 11 M4")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 13 M4", ipadModelName: "iPad Pro 13-inch M4", ipadModelYear: "2024", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 13 M4")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 11 M5", ipadModelName: "iPad Pro 11-inch M5", ipadModelYear: "2025", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 11 M5")), category: "Pro"),
    iPadViewDataModel(ipadModelImage: "iPad Pro 13 M5", ipadModelName: "iPad Pro 13-inch M5", ipadModelYear: "2025", attachedView: AnyView(iPadWallpapersGalleryView(wallpapers: iPadProCollection, ipadModelName: "iPad Pro 13 M5")), category: "Pro"),
    
    
]
