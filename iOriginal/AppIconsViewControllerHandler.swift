//
//  AppIconsViewControllerHandler.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 11/11/24.
//

import SwiftUI

let appslistItems = [
    ListItemModel(osName: "iOS", deviceImage: "iphone", attachedView: AnyView(AppsiOSView(viewContents: appsviewContents))),
    ListItemModel(osName: "macOS", deviceImage: "macbook", attachedView: AnyView(AppsmacOSView(viewContents: macOSViewContent))),
]

struct AppIconsViewControllerHandler: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var presentSubs: Bool = false
    
    
    var listItems: [ListItemModel] = []

    
    var body: some View {
        NavigationView(content: {
            ZStack {
                VStack {
                    List(listItems) { item in
                        NavigationLink(destination: item.attachedView, label: {
                            HStack {
                                Image(systemName: item.deviceImage)
                                Text(item.osName)
                            }
                        })
                    }
                }
            }.navigationTitle("App Icons")
               
        }).navigationViewStyle(.stack)
    }
}

#Preview {
    AppIconsViewControllerHandler()
}
