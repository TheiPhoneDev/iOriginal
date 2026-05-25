//
//  AnimatedWallpapersViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 8/2/24.
//

import SwiftUI
import AVKit

struct AnimatedWallpapersViewController: View {
    

    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            VStack {
                List {
                    NavigationLink {
                        iOS11View(wallpapers: motionWallpapers)
                    } label: {
                        HStack {
                            Image("iOS-11-Logo-500x315")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 50)
                            VStack(alignment: .leading) {
                                Text("iOS 11")
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Text("2017").foregroundColor(.secondary)
                            }
                        }
                    }
                    
                    NavigationLink {
                        iOS12View(wallpapers: motionWallpapers)
                    } label: {
                        HStack {
                            Image("iOS-12-Logo-500x315")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 50)
                                .shadow(radius: 1)
                            VStack(alignment: .leading) {
                                Text("iOS 12")
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Text("2018").foregroundColor(.secondary)
                            }
                        }
                    }
                    
                    
                    NavigationLink {
                        iOS13View(wallpapers: motionWallpapers)
                    } label: {
                        HStack {
                            Image("iOS-13-Logo-500x314")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 50)
                                .shadow(radius: 1)
                            VStack(alignment: .leading) {
                                Text("iOS 13")
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Text("2019").foregroundColor(.secondary)
                            }
                        }
                    }
                    
                    
                    NavigationLink {
                        iOS14View(wallpapers: motionWallpapers)
                    } label: {
                        HStack {
                            Image("iOS-14-Logo-500x281")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 50)
                                .shadow(radius: 1)
                            VStack(alignment: .leading) {
                                Text("iOS 14")
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Text("2020").foregroundColor(.secondary)
                            }
                        }
                    }
                    
                    
                    NavigationLink {
                        iOS15View(wallpapers: motionWallpapers)
                    } label: {
                        HStack {
                            Image("iOS-15-Logo-500x281")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 50)
                                .shadow(radius: 1)
                            VStack(alignment: .leading) {
                                Text("iOS 15")
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Text("2021").foregroundColor(.secondary)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("Live wallpapers")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AnimatedWallpapersViewController()
}
