//
//  AppleWallpapersApp.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI

@main
struct iOriginalApp: App {
   
    @AppStorage("ThemeMode") private var themes: Int = Themes.allCases.first!.rawValue

    
    private var currentTheme: ColorScheme? {
        guard let theme = Themes(rawValue: themes) else {return nil}
        switch theme {
        
        case .dark:
            return .dark
        case .light:
            return .light
        default:
            return nil
        }
    }
    
   
    
    @StateObject var tint = TintColorSwitcher()

   
   
    @Environment(\.colorScheme) var colorScheme
    
    #if os(iOS)
    @StateObject var deviceChecker = DeviceChecker()
    #endif
    
    var body: some Scene {
        WindowGroup {
            ContentView().preferredColorScheme(currentTheme)
                .tint(tint.currentTintColor)
                .onAppear(perform: {
                    #if os(iOS)
                    deviceChecker.hasDynamicIsland = deviceChecker.checkForDynamicIsland()
                    #endif

                })
        }
    }
}
