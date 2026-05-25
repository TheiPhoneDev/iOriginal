//
//  AppsmacOSView.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 1/1/25.
//


import SwiftUI

struct AppsmacOSView: View {
    @Environment(\.colorScheme) var colorScheme
    
    
    @State private var presentSubs: Bool = false
    
    
    var viewContents: [ViewContent] = []
    
    var body: some View {
        ZStack {
            VStack {
                List(viewContents) { item in
                    
                    if(item.osName == "macOS Big Sur (11.0)"||item.osName == "macOS Monterey (12.0)"||item.osName == "macOS Ventura (13.0)"||item.osName == "macOS Sonoma (14.0)"||item.osName == "macOS Sequoia (15.0)") {
                        
                        NavigationLink(destination: item.attachedView, label: {
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
                                   Text("Coming soon").foregroundColor(.blue)
                               }
                            }
                        }).disabled(true)
                    } else {
                        NavigationLink(destination: item.attachedView, label: {
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
                        })
                        
                    }
                    
                   
                }
            }
        }.navigationTitle("macOS")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    AppsmacOSView()
}
