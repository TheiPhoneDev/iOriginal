//
//  MacIconPreview.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 3/14/25.
//


import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct MacIconPreviewView: View {
    
    var icon: String
    var iconName: String
    @State private var presentDialog: Bool = false
    @State private var completedImage: Image? = nil
    @State private var completedUIImage: UIImage? = nil
    
    @State private var saveImageAlert: Bool = false

    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color(colorScheme == .dark ? .black : .white))
                    WebImage(url: URL(string: icon)!) { image in
                        image.image?.resizable().scaledToFit()
                            .cornerRadius(10)
                        
                    } .onSuccess { image, _, _ in
                        let uiImage = image
                        DispatchQueue.main.async {
                            completedImage = Image(uiImage: uiImage)
                            completedUIImage = uiImage
                            
                        }
                    }
                }
            }
        }.navigationTitle(iconName)
            .navigationBarTitleDisplayMode(.inline)
            .overlay {
                if saveImageAlert == true {
                    Button {
                        withAnimation(.easeOut) {
                            self.saveImageAlert.toggle()
                        }
                    } label: {
                            GeometryReader { size in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(uiColor: UIColor.systemGray5))
                                        .shadow(radius: 3)
                                        .frame(width: size.size.width, height: 50)
                                    HStack {
                                        Image(systemName: "checkmark.circle.fill")
                                        Text("Icon saved to photo library")
                                    }.font(.headline.weight(.medium))
                                }.frame(maxWidth: .infinity, alignment: .center)
                            }.padding(.init(top: 10, leading: 20, bottom: 0, trailing: 20))
                            .frame(maxHeight: .infinity, alignment: .top)
                    }
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing, content: {
                    if #available (iOS 26.0, *) {
                        Menu {
                            Button {
                                if let completedUIImage = completedUIImage {
                                    UIImageWriteToSavedPhotosAlbum(completedUIImage, nil, nil, nil)
                                }
                                
                                withAnimation(.easeIn) {
                                    self.saveImageAlert.toggle()
                                }
                                dismissAnimationAfterTime()
                            } label: {
                                Text("Save to photo library")
                            }
                        } label: {
                            Image(systemName: "ellipsis")
                        }
                    } else {
                        Button {
                            self.presentDialog.toggle()
                        } label: {
                            Image(systemName: "ellipsis")
                        }.confirmationDialog("", isPresented: $presentDialog, actions: {
                            Button {
                                if let completedUIImage = completedUIImage {
                                    UIImageWriteToSavedPhotosAlbum(completedUIImage, nil, nil, nil)
                                }
                                
                                withAnimation(.easeIn) {
                                    self.saveImageAlert.toggle()
                                }
                                dismissAnimationAfterTime()
                            } label: {
                                Text("Save to photo library")
                            }
                        })
                    }
                })
            })
    }
    
    
    func dismissAnimationAfterTime() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            withAnimation(.easeOut) {
                self.saveImageAlert = false
            }
        })
    }
    
    
    
    
}

#Preview {
    MacIconPreviewView(icon: String(), iconName: String())
}
