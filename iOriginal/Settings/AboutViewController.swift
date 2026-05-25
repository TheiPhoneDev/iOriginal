//
//  AboutViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI
import StoreKit

struct AboutViewController: View {
    
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    
    @Environment(\.presentationMode) var presentationMode
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                VStack {
                    List {
                        #if os(iOS)
                        VStack {
                            HStack {
                                Image("iOriginalAppIcon")
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 100, height: 100)
                                
                                VStack(alignment: .leading) {
                                    Text("iOriginal \(appVersion)")
                                        .font(.system(.title, design: .rounded))
                                    Text("by Pietro Gambatesa")
                                        .foregroundColor(.secondary)
                                        .font(.system(.title3, design: .rounded))
                                    
                                    
                                }
                                
                            }.frame(maxWidth: .infinity, alignment: .center)
                            
                        }.listRowBackground(colorScheme == .dark ? Color("Color") : Color(uiColor: .systemGray6))
                        #endif
                        
                        #if os(visionOS)
                        VStack {
                            HStack {
                                Image("iOriginalAppIcon")
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 100, height: 100)
                                
                                VStack(alignment: .leading) {
                                    Text("iOriginal \(appVersion)")
                                        .font(.system(.title, design: .rounded))
                                    Text("by Pietro Gambatesa")
                                        .foregroundColor(.secondary)
                                        .font(.system(.title3, design: .rounded))
                                    
                                    
                                }
                                
                            }.frame(maxWidth: .infinity, alignment: .center)
                            
                        }.listRowBackground(Color.clear)
                        #endif
                        
                        Section(header: Text("")) {
                            Text("All the wallpapers are owned by © 2024 Apple Inc. All rights are reserved.")
                            Text("This app just provides a collections of all the wallpaper used by Apple over the years in every iOS version")
                        }
                        
                      
                    }
                }
            }.navigationTitle("About")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Button {
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Done")
                        }
                    })
                })
        })
    }
}


//VStack {
////                   Image("Icon")
////                        .resizable()
////                        .frame(width: 150, height: 150)
////                        .cornerRadius(30)
////                    Text("iOriginal \(appVersion)")
////                        .font(.system(.largeTitle, design: .rounded, weight: .semibold))
////                    Text("by Pietro Gambatesa")
////                        .font(.system(.title3, design: .rounded, weight: .semibold))
//        VStack {
//            HStack {
//                Image("iOriginalAppIcon")
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 100, height: 100)
//                
//                VStack(alignment: .leading) {
//                    Text("iOriginal \(appVersion)")
////                                            .font(.title)
//                        .font(.system(.title, design: .rounded))
//                    Text("by Pietro Gambatesa")
//                        .foregroundColor(.secondary)
//                        .font(.system(.title3, design: .rounded))
//
//                    
//                }
//                
//                
//                
//            }
//            
//            
//          
//        }
//
//    
//    Divider()
//    Text("All the wallpapers are owned by © 2024 Apple Inc. All rights are reserved.")
//    Divider()
//    Text("This app just provides a collections of all the wallpaper used by Apple over the years in every iOS version")
//}.frame(maxWidth: .infinity, alignment: .center)
//    .frame(maxHeight: .infinity, alignment: .top)

#Preview {
    AboutViewController()
}
