//
//  AppIconPickerModel.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/26/24.
//

import Foundation
import SwiftUI


struct AppIconModel: Identifiable {
    var id = UUID()
    var appIconImage: String
    var appIconName: String
    var appIconAuthor: String
    var appIconCatgory: String
}

let appIcons = [
    AppIconModel(appIconImage: "iOriginalAppIcon", appIconName: "Default", appIconAuthor: "", appIconCatgory: ""),
    AppIconModel(appIconImage: "Icon", appIconName: "Original", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "MacIcon", appIconName: "iMac", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iMacProIcon", appIconName: "iMac Pro", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "WhiteIcon", appIconName: "White iPhone", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iOriginalDarkIcon", appIconName: "Dark", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iOriginalDeveloperIcon", appIconName: "Developer", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iOriginalHalloweenAppIcon", appIconName: "Halloween", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "FullScreenIcon", appIconName: "FullScreen", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iOriginal_OS_6_Icon", appIconName: "iOriginal OS 6", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "TransmissionIcon", appIconName: "Transmission", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iOriginalChristmasAppIcon", appIconName: "Christmas", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),
    AppIconModel(appIconImage: "iOriginalSixColors", appIconName: "Six Colors", appIconAuthor: "Pietro Gambatesa", appIconCatgory: ""),

]
