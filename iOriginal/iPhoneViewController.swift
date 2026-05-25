//
//  iPhoneViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct iPhoneViewController: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    
    @State private var presentSubs: Bool = false
    
    
    var viewContents: [ViewContent] = []
    
    var body: some View {
        ZStack {
            VStack {
                List(viewContents) { item in
                    NavigationLink(destination: item.attachedView, label: {
                        if(item.osName == "iOS 7"||item.osName == "iOS 8"||item.osName == "iOS 9"||item.osName == "iOS 12"||item.osName == "iOS 13"||item.osName == "iOS 14"||item.osName == "iOS 15") {
                            HStack {
                               Image(item.osImage)
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 90, height: 50)
                                   .shadow(radius: 1)
                               VStack(alignment: .leading) {
                                   Text(item.osName)
                                       .font(.title3.weight(.semibold))
                                       .foregroundColor(colorScheme == .dark ? .white : .black)
                                   Text(item.year).foregroundColor(.secondary)
                               }
                           }
                        } else {
                            HStack {
                               Image(item.osImage)
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 90, height: 50)
                               VStack(alignment: .leading) {
                                   Text(item.osName)
                                       .font(.title3.weight(.semibold))
                                       .foregroundColor(colorScheme == .dark ? .white : .black)
                                   Text(item.year).foregroundColor(.secondary)
                               }
                           }
                        }
                    })
                }
            }
        }.navigationTitle("iOS")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
    



#Preview {
    iPhoneViewController()
}
