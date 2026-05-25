//
//  iPadViewControllerHandler.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 8/30/24.
//

import SwiftUI

struct iPadViewControllerHandler: View {
    @Environment(\.colorScheme) var colorScheme
 
    
    @State private var presentSubs: Bool = false
    
    var content: [iPadViewDataModel] = []
    
    var body: some View {
        ZStack {
            VStack {
                List {
                    Section(header: Text("iPad")) {
                        ForEach(content) { item in
                            if item.category == "Normal" {
                                NavigationLink {
                                    item.attachedView
                                } label: {
                                    HStack {
                                        Image(item.ipadModelImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 50)
                                        VStack(alignment: .leading) {
                                            Text(item.ipadModelName)
                                                .font(.title3.weight(.semibold))
                                                .foregroundColor(colorScheme == .dark ? .white : .black)
                                            Text(item.ipadModelYear).foregroundColor(.secondary)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("iPad Mini")) {
                        ForEach(content) { item in
                            if item.category == "Mini" {
                                NavigationLink {
                                    item.attachedView
                                } label: {
                                    HStack {
                                        Image(item.ipadModelImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 50)
                                        VStack(alignment: .leading) {
                                            Text(item.ipadModelName)
                                                .font(.title3.weight(.semibold))
                                                .foregroundColor(colorScheme == .dark ? .white : .black)
                                            Text(item.ipadModelYear).foregroundColor(.secondary)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("iPad Air")) {
                        ForEach(content) { item in
                            if item.category == "Air" {
                                NavigationLink {
                                    item.attachedView
                                } label: {
                                    HStack {
                                        Image(item.ipadModelImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 50)
                                        VStack(alignment: .leading) {
                                            Text(item.ipadModelName)
                                                .font(.title3.weight(.semibold))
                                                .foregroundColor(colorScheme == .dark ? .white : .black)
                                            Text(item.ipadModelYear).foregroundColor(.secondary)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("iPad Pro")) {
                        ForEach(content) { item in
                            if item.category == "Pro" {
                                NavigationLink {
                                    item.attachedView
                                } label: {
                                    HStack {
                                        Image(item.ipadModelImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 50)
                                        VStack(alignment: .leading) {
                                            Text(item.ipadModelName)
                                                .font(.title3.weight(.semibold))
                                                .foregroundColor(colorScheme == .dark ? .white : .black)
                                            Text(item.ipadModelYear).foregroundColor(.secondary)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    
                }
                
            }
        }.navigationTitle("iPad")
            .navigationBarTitleDisplayMode(.inline)
            
    }

}

#Preview {
    iPadViewControllerHandler(content: iPadViewDataModelList)
}
