//
//  ExtraFeaturesViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 8/4/24.
//

import SwiftUI

struct ExtraFeaturesViewController: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var presentSubs: Bool = false
    
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                VStack {
                    Form {
                        
                        NavigationLink {
                            AnimatedWallpapersViewController()
                        } label: {
                            HStack {
                                Image(systemName: "livephoto")
                                Text("Live wallpapers")
                            }
                        }
                        
                        NavigationLink {
                            AppIconsViewController(appIcons: appIconData)
                        } label: {
                            HStack {
                                Image(systemName: "app.fill")
                                Text("App Icons")
                            }
                        }
                        
                        
                    }
                }
            }.navigationTitle("Extra")
                
        }).navigationViewStyle(.stack)
    }
}

#Preview {
    ExtraFeaturesViewController()
}
