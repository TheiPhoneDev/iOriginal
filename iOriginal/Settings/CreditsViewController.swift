//
//  CreditsViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/26/24.
//

import SwiftUI
import MessageUI

struct CreditsViewController: View {
    

    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            VStack {
                List {
                    Text("Apple - for making this amazing wallpapers")

                    
                    Link(destination: URL(string: "https://github.com/SDWebImage/SDWebImageSwiftUI.git")!, label: {
                        Text("SDWebImage/SDWebImageSwiftUI - developed by SDWebImage")
                    })
                    
                    Link(destination: URL(string: "https://github.com/swiftlang/swift-markdown.git")!, label: {
                        Text("SwiftMarkdown - developed by Apple (@apple)")
                    })
                    
                    Link(destination: URL(string: "https://github.com/christianselig/Markdownosaur.git")!, label: {
                        Text("Markdownosaur - developed by Christian Selig (@christianselig)")
                    })
                    
                    Link(destination: URL(string: "https://1000logos.net")!, label: {
                        Text("1000logos")
                    })
                    
                    Link(destination: URL(string: "https://apple.fandom.com/wiki/Main_Screen")!, label: {
                        Text("Apple Wiki Fandom")
                    })
                    
                    Link(destination: URL(string: "https://www.wikipedia.org")!, label: {
                        Text("Wikipedia")
                    })
                    
                  
                    
                }
            }
        }.navigationTitle("Credits")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CreditsViewController()
}
