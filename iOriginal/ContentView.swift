//
//  ContentView.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
    }
    
    var body: some View {
        TabView {
            HomeViewController(listItems: listItems)
                .tabItem {
                    Label("OS", systemImage: "doc.text.image")
                        .environment(\.symbolVariants, .none)
                }
            DeviceHomeViewController(listItems: DevicelistItems)
                .tabItem {
                    Label("Devices", systemImage: "iphone")
                }
//            ExtraFeaturesViewController()
//                .tabItem {
//                    Label("Extra", systemImage: "square.grid.2x2.fill")
//                }
            LiveWallpapersViewControllerHandler()
                .tabItem {
                    Label("Live", systemImage: "livephoto")
                }
            AppIconsViewControllerHandler(listItems: appslistItems)
                .tabItem {
                    Label("App Icons", systemImage: "apps.iphone")
                }
            SettingsViewController()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
