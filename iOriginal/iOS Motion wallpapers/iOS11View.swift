//
//  iOS11View.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 8/2/24.
//

import SwiftUI
import AVKit

struct iOS11View: View {
    
    var wallpapers: [MotionWallpaperDataModel] = []

    
    var body: some View {
        ZStack {
            VStack {
                ScrollView(.vertical, showsIndicators: true, content: {
                    ForEach(wallpapers) { wallpaper in
                        if wallpaper.osVersion == "iOS 11" {
                            NavigationLink {
                                VideoDetailView(string: wallpaper.wallpaperImage, videoURL: wallpaper.wallpaperImage)
                            } label: {
                                VideoPlayer(player: AVPlayer(url: URL(string: wallpaper.wallpaperImage)!))
                                    .frame(width: 350, height: 400)
                                    .cornerRadius(4)
                            }

                        }
                            
                    }
                })
            }
        }.navigationTitle("iOS 11")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    iOS11View()
}
