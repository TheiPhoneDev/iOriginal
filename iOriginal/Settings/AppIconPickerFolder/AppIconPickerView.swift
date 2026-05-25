//
//  AppIconPickerView.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/26/24.
//

import SwiftUI

struct AppIconPickerView: View {
    
    var appIcons: [AppIconModel] = []
    
    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("current_icon") var currentIcon: String = "Default"
    @AppStorage("current_icon_image") var currentIconImage: String = "iOriginalAppIcon"
    
    @State private var presentNonSubAlert: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                List {
                    
                  
                    
                    ForEach(appIcons) { appIcon in
                        Button {
                            alternateAppIcon(iconName: appIcon.appIconName)
                            currentIconImage = appIcon.appIconImage
                            currentIcon = appIcon.appIconName
                        } label: {
                            HStack {
                                Image(appIcon.appIconImage)
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(15)
                                VStack(alignment: .leading) {
                                    Text(appIcon.appIconName)
                                        .foregroundColor(colorScheme == .dark ? .white : .black)
                                    if appIcon.appIconAuthor.isEmpty {
                                        
                                    } else {
                                        Text(appIcon.appIconAuthor)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                Spacer()
                                Spacer()
                                
                                if UIApplication.shared.alternateIconName == appIcon.appIconName {
                                    Image(systemName: "checkmark")
                                }
                                
                            }
                        }.alert(Text("Warning!"), isPresented: $presentNonSubAlert) {
                            Button {
                                self.presentNonSubAlert.toggle()
                            } label: {
                                Text("Ok, thanks!")
                            }
                            
                        } message: {
                            Text("It looks like you are not subscribed to iOriginal Pro. If you'd like to subscribe, go to the iOriginal Pro section in settings.")
                        }
                    }
                    
                    
                }
            }
        }.navigationTitle("App Icon")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    
    private func alternateAppIcon(iconName: String) {
        UIApplication.shared.setAlternateIconName(iconName) { (error) in
            if let error = error {
                print("Unable to set alternate app icon, error: \(error)")
            }
        }
    }
    
    
}

#Preview {
    AppIconPickerView(appIcons: appIcons)
}
