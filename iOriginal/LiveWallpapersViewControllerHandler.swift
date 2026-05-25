//
//  LiveWallpapersViewControllerHandler.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 11/11/24.
//

import SwiftUI

struct LiveWallpapersViewControllerHandler: View {
    
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
                        
                        
                        
                        
                    }
                }
            }.navigationTitle("Live")
               
        }).navigationViewStyle(.stack)
    }
}

#Preview {
    LiveWallpapersViewControllerHandler()
}
