//
//  HomeViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI

let listItems = [
    ListItemModel(osName: "iOS", deviceImage: "iphone", attachedView: AnyView(iPhoneViewController(viewContents: viewContents))),
    ListItemModel(osName: "iPadOS", deviceImage: "ipad", attachedView: AnyView(iPadViewController(viewContents: iPadviewContents))),
    ListItemModel(osName: "macOS", deviceImage: "macbook", attachedView: AnyView(MacOSViewController(viewContents: MacviewContents))),
]

struct HomeViewController: View {
    
    @AppStorage("Current_layout") var currentLayout: Int = 0

    @State private var present: Bool = false
    @Environment(\.colorScheme) var colorScheme
   
    
    @State private var present1: Bool = false
    
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
                }.navigationTitle("OSes")
               
                .toolbar(content: {
                    
                  
                  
                    
                    
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Menu {
                            Button {
                                currentLayout = 0
                            } label: {
                                HStack {
                                    Text("Grid")
                                    if currentLayout == 0 {
                                        Image(systemName: "checkmark")
                                    }
                                }
                            }
                            
                            Button {
                                currentLayout = 1
                            } label: {
                                HStack {
                                    Text("List")
                                    if currentLayout == 1 {
                                        Image(systemName: "checkmark")
                                    }
                                }
                            }
                            
                            Button {
                                currentLayout = 2
                            } label: {
                                HStack {
                                    Text("Carousel")
                                    if currentLayout == 2 {
                                        Image(systemName: "checkmark")
                                    }
                                }
                            }
                        } label: {
                            Image(systemName: "ellipsis.circle")
                        }

                    })
                })
        }).navigationViewStyle(.stack)
    }
}

#Preview {
    HomeViewController()
}
