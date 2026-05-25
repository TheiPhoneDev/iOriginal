//
//  MacOSAppIconsViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 3/14/25.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct MacOSAppIconsViewController: View {
    
    var osName: String = ""
    var appIcons: [AppIconsDataModel] = []
    @State private var completedImage: Image? = nil
    @State private var completedUIImage: UIImage? = nil

    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
            ZStack {
                VStack {
                    List(appIcons) { appicon in
                        if appicon.osVersion == osName {
                            NavigationLink {
                                MacIconPreviewView(icon: appicon.appIconURL, iconName: appicon.appIconName)
                            } label: {
                                HStack {
                                    WebImage(url: URL(string: appicon.appIconURL)!) { image in
                                        image.image?.resizable().scaledToFit().cornerRadius(10).frame(width: 40, height: 50)
                                           
                                        
                                    }.onSuccess { image, _, _ in
                                          let uiImage = image
                                        DispatchQueue.main.async {
                                            completedImage = Image(uiImage: uiImage)
                                        }
                                    }
                                    Text(appicon.appIconName)
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(colorScheme == .dark ? .white : .black)
                                }
                            }
                        }
                    }
                }
            }.navigationTitle(osName)
                .navigationBarTitleDisplayMode(.inline)
               
    }
}

#Preview {
    MacOSAppIconsViewController(appIcons: appIconData)
}
