//
//  DeviceHomeViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 9/2/24.
//

import SwiftUI


let DevicelistItems = [
    ListItemModel(osName: "iPhone", deviceImage: "iphone", attachedView: AnyView(iPhoneViewControllerHandler(viewContents: iPhoneWallpapersViewContents))),
    ListItemModel(osName: "iPod", deviceImage: "ipodtouch", attachedView: AnyView(iPodViewController(viewContents: iPodViewContents))),
    ListItemModel(osName: "iPad", deviceImage: "ipad", attachedView: AnyView(iPadViewControllerHandler(content: iPadViewDataModelList))),
]

struct DeviceHomeViewController: View {
    
    @AppStorage("Current_layout") var currentLayout: Int = 0

    
    @Environment(\.colorScheme) var colorScheme
    
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
            }.navigationTitle("Devices")
                
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
    DeviceHomeViewController()
}
