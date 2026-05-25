//
//  DetailsViewController.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 7/19/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DetailsViewController: View {
    
    var string: String
    var osVersion: String
    @State private var presentActionSheet: Bool = false
    
    @State private var completedImage: Image? = nil
    @State private var completedUIImage: UIImage? = nil

    @State private var saveImageAlert: Bool = false

    
    var body: some View {
            ZStack {
                VStack {
                    WebImage(url: URL(string: string)!) { image in
                        image.image?.resizable().scaledToFit()
                    }
                        .onSuccess { image, _, _ in
                              let uiImage = image
                            DispatchQueue.main.async {
                                completedImage = Image(uiImage: uiImage)
                                completedUIImage = uiImage

                            }
                        }
                }
            }.navigationTitle("Details")
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
                                        Text("Wallpaper saved to photo library")
                                    }.font(.headline.weight(.medium))
                                }.frame(maxWidth: .infinity, alignment: .center)
                            }.padding(.init(top: 10, leading: 20, bottom: 0, trailing: 20))
                            .frame(maxHeight: .infinity, alignment: .top)
                    }
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    if #available(iOS 26.0, *) {
                        Menu {
                            Button {
    //                            let image: Image = Image(string)
    //                            let uiImage: UIImage = image.asUIImage()
                                if let completedUIImage = completedUIImage {
                                    UIImageWriteToSavedPhotosAlbum(completedUIImage, nil, nil, nil)
                                }
                                withAnimation(.easeIn) {
                                    self.saveImageAlert.toggle()
                                }
                                dismissAnimationAfterTime()
                            } label: {
                                Text("Save wallpaper to photo library")
                            }
                        } label: {
                            Image(systemName: "ellipsis")
                        }
                    } else {
                        Button {
                            self.presentActionSheet.toggle()
                        } label: {
                            Image(systemName: "ellipsis")
                                .font(.title)
                        }.confirmationDialog("\(osVersion) Wallpaper", isPresented: $presentActionSheet, actions: {
                            Button {
    //                            let image: Image = Image(string)
    //                            let uiImage: UIImage = image.asUIImage()
                                if let completedUIImage = completedUIImage {
                                    UIImageWriteToSavedPhotosAlbum(completedUIImage, nil, nil, nil)
                                }
                                withAnimation(.easeIn) {
                                    self.saveImageAlert.toggle()
                                }
                                dismissAnimationAfterTime()
                            } label: {
                                Text("Save wallpaper to photo library")
                            }
                        })
                    }
                })
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    if let completedImage = completedImage {
                        ShareLink(item: completedImage, preview: SharePreview("\(osVersion) Wallpaper", image: completedImage), label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
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
    DetailsViewController(string: "", osVersion: "")
}
