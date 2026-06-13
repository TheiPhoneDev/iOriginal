//
//  ViewContent.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 12/31/24.
//

import Foundation
import SwiftUI

struct ViewContent: Identifiable {
    var id = UUID()
    var osName: String
    var year: String
    var osImage: String
    var attachedView: AnyView
}

let viewContents = [
    ViewContent(osName: "iPhoneOS 1", year: "2007", osImage: "IPhone_OS_1_logo", attachedView: AnyView(OSMiddleView(osName: "iPhoneOS 1", wallpapers: wallpaperData))),
    ViewContent(osName: "iPhoneOS 2", year: "2008", osImage: "IPhone_OS_2_logo", attachedView: AnyView(OSMiddleView(osName: "iPhoneOS 2", wallpapers: wallpaperData))),
    ViewContent(osName: "iPhoneOS 3", year: "2009", osImage: "IPhone_OS_3_logo", attachedView: AnyView(OSMiddleView(osName: "iPhoneOS 3", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 4", year: "2010", osImage: "iOS-4-Logo-500x282", attachedView: AnyView(OSMiddleView(osName: "iOS 4", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 5", year: "2011", osImage: "iOS-5-Logo-500x282", attachedView: AnyView(OSMiddleView(osName: "iOS 5", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 6", year: "2012", osImage: "iOS-6-Logo-500x282", attachedView: AnyView(OSMiddleView(osName: "iOS 6", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 7", year: "2013", osImage: "iOS-7-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 7", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 8", year: "2014", osImage: "iOS-8-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 8", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 9", year: "2015", osImage: "iOS-9-Logo-500x282", attachedView: AnyView(OSMiddleView(osName: "iOS 9", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 10", year: "2016", osImage: "iOS-10-Logo-500x282", attachedView: AnyView(OSMiddleView(osName: "iOS 10", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 11", year: "2017", osImage: "iOS-11-Logo-500x315", attachedView: AnyView(OSMiddleView(osName: "iOS 11", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 12", year: "2018", osImage: "iOS-12-Logo-500x315", attachedView: AnyView(OSMiddleView(osName: "iOS 12", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 13", year: "2019", osImage: "iOS-13-Logo-500x314", attachedView: AnyView(OSMiddleView(osName: "iOS 13", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 14", year: "2020", osImage: "iOS-14-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 14", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 15", year: "2021", osImage: "iOS-15-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 15", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 16", year: "2022", osImage: "iOS-16-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 16", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 17", year: "2023", osImage: "iOS-17-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 17", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 18", year: "2024", osImage: "iOS-18-Logo-500x281", attachedView: AnyView(OSMiddleView(osName: "iOS 18", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 26", year: "2025", osImage: "IOS_26_icon", attachedView: AnyView(OSMiddleView(osName: "iOS 26", wallpapers: wallpaperData))),
    ViewContent(osName: "iOS 27", year: "2026", osImage: "ios-27-logo", attachedView: AnyView(OSMiddleView(osName: "iOS 27", wallpapers: wallpaperData))),

]

let iPadviewContents = [
    ViewContent(osName: "iPhoneOS 3", year: "2009", osImage: "IPhone_OS_3_logo", attachedView: AnyView(OSMiddleView2(osName: "iPhoneOS 3", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 4", year: "2010", osImage: "iOS-4-Logo-500x282", attachedView: AnyView(OSMiddleView2(osName: "iOS 4", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 5", year: "2011", osImage: "iOS-5-Logo-500x282", attachedView: AnyView(OSMiddleView2(osName: "iOS 5", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 6", year: "2012", osImage: "iOS-6-Logo-500x282", attachedView: AnyView(OSMiddleView2(osName: "iOS 6", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 7", year: "2013", osImage: "iOS-7-Logo-500x281", attachedView: AnyView(OSMiddleView2(osName: "iOS 7", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 8", year: "2014", osImage: "iOS-8-Logo-500x281", attachedView: AnyView(OSMiddleView2(osName: "iOS 8", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 9", year: "2015", osImage: "iOS-9-Logo-500x282", attachedView: AnyView(OSMiddleView2(osName: "iOS 9", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 10", year: "2016", osImage: "iOS-10-Logo-500x282", attachedView: AnyView(OSMiddleView2(osName: "iOS 10", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 11", year: "2017", osImage: "iOS-11-Logo-500x315", attachedView: AnyView(OSMiddleView2(osName: "iOS 11", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iOS 12", year: "2018", osImage: "iOS-12-Logo-500x315", attachedView: AnyView(OSMiddleView2(osName: "iOS 12", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 13", year: "2019", osImage: "iOS-13-Logo-500x314", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 13", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 14", year: "2020", osImage: "iOS-14-Logo-500x281", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 14", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 15", year: "2021", osImage: "IPadOS_15_logo", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 15", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 16", year: "2022", osImage: "IPadOS_16_icon", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 16", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 17", year: "2023", osImage: "ipados-17-badge-icon", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 17", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 18", year: "2024", osImage: "ipados-18-num-96x96_2x", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 18", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 26", year: "2025", osImage: "IOS_26_icon-2", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 26", wallpapers: iPadWallpapers))),
    ViewContent(osName: "iPadOS 27", year: "2026", osImage: "ios-27-logo", attachedView: AnyView(OSMiddleView2(osName: "iPadOS 27", wallpapers: iPadWallpapers))),

    
]


let MacviewContents = [
    ViewContent(osName: "OS X Lion 10.7", year: "2011", osImage: "OS_X_Lion_logo", attachedView: AnyView(OSMiddleView3(osName: "OS X Lion 10.7", wallpapers: macWallpapers))),
    ViewContent(osName: "OS X Mountain Lion 10.8", year: "2012", osImage: "OS_X_Mountain_Lion_logo", attachedView: AnyView(OSMiddleView3(osName: "OS X Mountain Lion 10.8", wallpapers: macWallpapers))),
    ViewContent(osName: "OS X Mavericks 10.9", year: "2013", osImage: "OS_X_Mavericks_Logo", attachedView: AnyView(OSMiddleView3(osName: "OS X Mavericks 10.9", wallpapers: macWallpapers))),
    ViewContent(osName: "OS X Yosemite 10.10", year: "2014", osImage: "OS_X_Yosemite_550x468", attachedView: AnyView(OSMiddleView3(osName: "OS X Yosemite 10.10", wallpapers: macWallpapers))),
    ViewContent(osName: "OS X El Capitan 10.11", year: "2015", osImage: "OS_X_El_Capitan_logo.svg", attachedView: AnyView(OSMiddleView3(osName: "OS X El Capitan 10.11", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Sierra 10.12", year: "2016", osImage: "MacOS_Sierra_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Sierra 10.12", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS High Sierra 10.13", year: "2017", osImage: "MacOS_High_Sierra_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS High Sierra 10.13", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Mojave 10.14", year: "2018", osImage: "MacOS_Mojave_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Mojave 10.14", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Catalina 10.15", year: "2019", osImage: "MacOS_Catalina_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Catalina 10.15", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Big Sur 11.0", year: "2020", osImage: "MacOS_Big_Sur_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Big Sur 11.0", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Monterey 12.0", year: "2021", osImage: "MacOS_Monterey_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Monterey 12.0", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Ventura 13.0", year: "2022", osImage: "MacOS_Ventura_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Ventura 13.0", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Sonoma 14.0", year: "2023", osImage: "MacOS_Sonoma_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Sonoma 14.0", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Sequoia 15.0", year: "2024", osImage: "MacOS_Sequoia_logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Sequoia 15.0", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Tahoe 26.0", year: "2025", osImage: "macos-26-256x256", attachedView: AnyView(OSMiddleView3(osName: "macOS Tahoe 26.0", wallpapers: macWallpapers))),
    ViewContent(osName: "macOS Golden Gate 27.0", year: "2026", osImage: "macos-27-logo", attachedView: AnyView(OSMiddleView3(osName: "macOS Golden Gate 27.0", wallpapers: macWallpapers))),
    
]


