//
//  iPhoneViewControllerHandler.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 8/30/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct iPhoneViewControllerHandler: View {
    @Environment(\.colorScheme) var colorScheme
 
    
    @State private var presentSubs: Bool = false
    
    var viewContents: [ViewContent] = []

    
    var body: some View {
        ZStack {
            VStack {
                List(viewContents) { item in
                    NavigationLink(destination: item.attachedView, label: {
                        HStack {
                            Image(item.osImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 110, height: 70)
                            VStack(alignment: .leading) {
                                Text(item.osName)
                                    .font(.title3.weight(.semibold))
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                                Text(item.year).foregroundColor(.secondary)
                            }
                        }
                    })
                }
               
            }
        }.navigationTitle("iPhone")
            .navigationBarTitleDisplayMode(.inline)
            
    }
}

#Preview {
    iPhoneViewControllerHandler()
}
