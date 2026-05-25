//
//  SettingsViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI
import MessageUI
import UpdateKit

struct SettingsViewController: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var presentAboutView: Bool = false
    @AppStorage("current_icon") var currentIcon: String = "Default"
    @AppStorage("current_icon_image") var currentIconImage: String = "Icon"

    @State private var present: Bool = false
    
    @State private var presentAlert: Bool = false
    
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String

    @State private var presentPaywall: Bool = false
    
    
    @State private var textfieldString: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var presentReleaseNotes: Bool = false
    
    #if os(iOS)
    @StateObject var deviceChecker = DeviceChecker()
    #endif
    var body: some View {
        NavigationView(content: {
            ZStack {
                List {
                 
                   
                   
                    
                    #if os(iOS)
                    Section(header: Text("")) {
                        NavigationLink {
                            ThemeView()
                        } label: {
                            HStack {
                                ZStack {
                                    Image(systemName: "circle.tophalf.fill")
                                        .font(.title3.weight(.medium))
                                        .foregroundColor(Color(uiColor: .systemBlue))
                                        .rotationEffect(.degrees(-90))
                                    Image(systemName: "circle.tophalf.fill")
                                        .font(.caption)
                                        .foregroundColor(Color(uiColor: .white))
                                        .rotationEffect(.degrees(-90))
                                    Image(systemName: "circle.tophalf.fill")
                                        .font(.caption)
                                        .foregroundColor(Color(uiColor: .systemBlue))
                                        .rotationEffect(.degrees(90))
                                }
                                Text("Theme")
                                    .foregroundColor(Color(colorScheme == .dark ? .white : .black))
                                
                                
                            }
                        }
                    }
                    
                    if #available(iOS 17.0, *) {
                        Section(header: Text("")) {
                            NavigationLink {
                                PhoneLiveActivityView(phonesArray: phoneLiveActivity)
                            } label: {
                                
                                if deviceChecker.hasDynamicIsland == true {
                                    Text("🏝️ Dynamic island activities")
                                        .foregroundColor(Color(colorScheme == .dark ? .white : .black))
                                } else {
                                    Text("⚡️ Live activities")
                                        .foregroundColor(Color(colorScheme == .dark ? .white : .black))
                                }
                                
                            }
                        }
                    }
                    #endif
                    
                    Section(header: Text("")) {
                        
                        
                    
                       
                        
                        Button {
                            self.presentAboutView.toggle()
                        } label: {
                            HStack {
                                Image(systemName: "at")
                                    .font(.headline.weight(.medium))
                                    .foregroundColor(.blue)
                                Text("About")
                                    .foregroundColor(Color(colorScheme == .dark ? .white : .black))
                                Spacer()
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(uiColor: .systemGray3))
                                    .font(.subheadline.weight(.medium))
                            }
                        }.sheet(isPresented: $presentAboutView, content: {
                            AboutViewController()
                        })
                        
                        
                        #if os(iOS)
                        NavigationLink {
                            AppIconPickerView(appIcons: appIcons)
                        } label: {
                            HStack {
                                Image(currentIconImage)
                                    .resizable().renderingMode(.original).scaledToFit().frame(width: 20, height: 20).cornerRadius(4)
                                HStack {
                                    Text("App Icon")
                                    Spacer()
                                    Text(currentIcon).foregroundColor(.secondary)
                                }
                            }
                        }
                        #endif
                        
                       
                    }
                    
                 
                    
                    
                    
                    
           
                    Section(header: Text("")) {
                        Button {
                            self.presentReleaseNotes.toggle()
                        } label: {
                            HStack {
                                Image(systemName: "app.badge.fill")
                                    .font(.headline.weight(.medium))
                                    .foregroundColor(.green)
                                Text("Whats's New")
                                    .foregroundColor(Color(colorScheme == .dark ? .white : .black))
                                Spacer()
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(uiColor: .systemGray3))
                                    .font(.subheadline.weight(.medium))
                            }
                        }.sheet(isPresented: $presentReleaseNotes, content: {
                            UpdateViewHandler(updateNotes: notes1)
                                .onAppear(perform: {
                                    setTransparentNavBar()
                                })
                                
                        })
                    }
                 
                    
              
                    
                    
                    
                }
            }.navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
                
        }).navigationViewStyle(.stack)
    }
    
    func setTransparentNavBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground() // Makes background transparent

        // Apply appearance to navigation bar
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
 
    
  
    
    
}

public let notes1: [UpdateNotes] = [
    .init(updateNoteImageType: "Symbol", updateNoteImage: "macbook.and.iphone", updateNoteTitle: "New OSes app icons 📱💻", updateNoteDescription: "iOriginal 2.0 brings all the new app icons introduced by Apple in the new OSes versions at WWDC25."),
    .init(updateNoteImageType: "Image", updateNoteImage: "macos-26-256x256", updateNoteTitle: "Support for iOS 26", updateNoteDescription: "iOriginal 2.0 supports the new Liquid Glass design system introduced in iOS 26."),
    
    
]

#Preview {
    SettingsViewController()
}
