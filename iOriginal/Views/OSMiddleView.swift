//
//  OSMiddleView.swift
//  iOriginal
//
//  Created by Pietro Gambatesa on 12/31/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct OSMiddleView: View {
    
    var osName: String = ""
    
    var wallpapers: [WallpapersModel] = []

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    let column = [
        GridItem(.flexible()),
    ]
    
    @State private var completedImage: Image? = nil
    

    @AppStorage("Current_layout") var currentLayout: Int = 0

    var body: some View {
        ZStack {
            switch(currentLayout) {
            case 0:
                self.view1
            case 1:
                self.view2
            case 2:
                self.view3
            default:
                self.view1

            }
        }.navigationTitle(osName)
            .navigationBarTitleDisplayMode(.inline)

    }
    
   
    
    var view1: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVGrid(columns: columns, content: {
                ForEach(wallpapers) { wallpaper in
                    if wallpaper.osVersion == osName {
                        NavigationLink {
                            DetailsViewController(string: wallpaper.wallpaperImage, osVersion: wallpaper.osVersion)
                        } label: {
                            WebImage(url: URL(string: wallpaper.wallpaperImage)!) { image in
                                image.image?.resizable().scaledToFit().cornerRadius(10)
                                   
                                
                            }.onSuccess { image, _, _ in
                                  let uiImage = image
                                DispatchQueue.main.async {
                                    completedImage = Image(uiImage: uiImage)
                                }
                            }
                                
                            
                            
                        }.tint(Color.clear)
                            .background(Color.clear)
                    }
                }
            })
        })
    }
    
    var view2: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVGrid(columns: column, content: {
                ForEach(wallpapers) { wallpaper in
                    if wallpaper.osVersion == osName {
                        NavigationLink {
                            DetailsViewController(string: wallpaper.wallpaperImage, osVersion: wallpaper.osVersion)
                        } label: {
                            WebImage(url: URL(string: wallpaper.wallpaperImage)!) { image in
                                image.image?.resizable().scaledToFit().cornerRadius(10)

                            }
                                .onSuccess { image, _, _ in
                                      let uiImage = image
                                    DispatchQueue.main.async {
                                        completedImage = Image(uiImage: uiImage)
                                    }
                                }
                                
                        }.tint(Color.clear)
                            .background(Color.clear)
                    }
                }
            })
        })
    }
    
    
    var view3: some View {
        VStack {
            TabView {
                ForEach(wallpapers) { wallpaper in
                    if wallpaper.osVersion == osName {
                        NavigationLink {
                            DetailsViewController(string: wallpaper.wallpaperImage, osVersion: wallpaper.osVersion)
                        } label: {
                            WebImage(url: URL(string: wallpaper.wallpaperImage)!) { image in
                                image.image?.resizable().scaledToFit().cornerRadius(10)

                            }
                                .onSuccess { image, _, _ in
                                      let uiImage = image
                                    DispatchQueue.main.async {
                                        completedImage = Image(uiImage: uiImage)
                                    }
                                }
                               
                        }.tint(Color.clear)
                            .background(Color.clear)
                    }
                }
            }.tabViewStyle(.page(indexDisplayMode: .always))
        }
    }
    
    
}


#Preview {
    OSMiddleView()
}

