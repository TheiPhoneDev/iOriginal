//
//  MacOSViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/23/24.
//

import SwiftUI

struct MacOSViewController: View {
    
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
        }.navigationTitle("macOS")
            .navigationBarTitleDisplayMode(.inline)
            

    }
}

#Preview {
    MacOSViewController()
}
