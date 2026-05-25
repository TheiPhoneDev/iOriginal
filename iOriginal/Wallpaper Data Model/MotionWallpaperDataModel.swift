//
//  MotionWallpaperDataModel.swift
//  iOriginal
//
//  Created by Pietro Gambatesa on 8/2/24.
//

import Foundation
import SwiftUI


struct MotionWallpaperDataModel: Identifiable {
    var id = UUID()
    var wallpaperImage: String
    var wallpaperName: String
    var osVersion: String
    var year: String
    var os: String
    var platform: String
}


let motionWallpapers = [
    
    //iOS 11
    
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1010.pink-375w-812h.m4v?alt=media&token=4496fee8-e9ca-4abe-be83-364b5b075a4b", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1015.green-375w-812h.m4v?alt=media&token=736a46a7-a882-4146-bfbe-0928fc52f14a", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1020.yellow-375w-812h.m4v?alt=media&token=d09b6c00-4acb-4a42-9229-0a99e57368c9", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1030.OrangeInk-375w-812h.m4v?alt=media&token=0256bc47-100c-4082-8b73-df0b721f0331", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1035.BlueInk-375w-812h.m4v?alt=media&token=c0d46ec2-b37c-43b2-b2d8-a696ca2de0ac", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1040.PinkInk-375w-812h.m4v?alt=media&token=4833bbb0-a50d-4df4-963e-655c68477d8c", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1100.InkLightBlue.m4v?alt=media&token=af9eaca2-faa6-4ce0-a7ca-66b45927c06d", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1105.InkWhite.m4v?alt=media&token=a58b480f-80f6-4728-9bb6-7dbff806a5f7", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2011%2F1110.InkPurple.m4v?alt=media&token=77c67f53-626a-400c-ae59-2f8432e5c2fb", wallpaperName: "", osVersion: "iOS 11", year: "2017", os: "iOS", platform: "iPhone"),
   
    
    //iOS 12
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1010.pink-375w-812h.m4v?alt=media&token=91b3d7ad-2964-4982-a53d-0799348f9c39", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1015.green-375w-812h.m4v?alt=media&token=eb3d373b-1895-4ac4-96bb-e0845c878d9b", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1020.yellow-375w-812h.m4v?alt=media&token=20f43ac3-cb57-4f7d-b974-dd751695ee1a", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1030.OrangeInk-375w-812h.m4v?alt=media&token=d98e7e5b-4b95-4ced-839b-0afff729dbb1", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1035.BlueInk-375w-812h.m4v?alt=media&token=4c51a7c4-eb92-4c47-9946-39d40e2edecb", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1040.PinkInk-375w-812h.m4v?alt=media&token=0184a450-2b50-4344-ada5-7bf24b3aa3d4", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1100.InkLightBlue.m4v?alt=media&token=168e75d3-c598-4e05-af72-eb6c86c83b6e", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1105.InkWhite.m4v?alt=media&token=5b96d6d6-3aa4-495e-a025-a2b7314c2208", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1110.InkPurple.m4v?alt=media&token=4e2d2c1e-85fb-4308-900b-0afe23b0490b", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1120.BubbleA-argon-375w-812h%403x~iphone.mp4?alt=media&token=1c733a5d-4dbd-4f8a-bde5-064ec82aa22b", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1125.BubbleB-argon-375w-812h%403x~iphone.mp4?alt=media&token=47a58ed1-9945-4880-bb8d-72e3e1dc0f63", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2012%2F1130.BubbleC-argon-375w-812h%403x~iphone.mp4?alt=media&token=2c28638a-3f43-428f-8319-3b42a9367e91", wallpaperName: "", osVersion: "iOS 12", year: "2018", os: "iOS", platform: "iPhone"),
    
    
    
    //iOS 13
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1120.Bubble_A-375w-812h%403x~iphone.mp4?alt=media&token=287939ad-6788-43b6-a65a-b13730e2b2e5", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1125.Bubble_B-375w-812h%403x~iphone.mp4?alt=media&token=7a0117a2-3ed7-4c99-aab0-0c851a23d60a", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1130.Bubble_C-375w-812h%403x~iphone.mp4?alt=media&token=0afe51fd-4ee5-4bd4-ba3a-c6590e2c680e", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1351.Screen_Pop_A_Light-375w-812h%403x~iphone.mp4?alt=media&token=b8f5ba2a-0966-4ba5-ad02-ab2834b976aa", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1352.Screen_Pop_A_Dark-375w-812h%403x~iphone.mov?alt=media&token=3e6a8760-b4c3-4bf2-bf5a-bac2a93421a4", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1356.Screen_Pop_B_Light-375w-812h%403x~iphone.mov?alt=media&token=4da29e08-da21-4fe7-a163-14638d0b9324", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1357.Screen_Pop_B_Dark-375w-812h%403x~iphone.mov?alt=media&token=db8930bf-5d7c-4e89-a961-261dac0cb2e3", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1361.Screen_Pop_C_Light-375w-812h%403x~iphone.mov?alt=media&token=e115e263-e8fe-4ec1-93fe-8da88bf6dc99", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1362.Screen_Pop_C_Dark-375w-812h%403x~iphone.mov?alt=media&token=cbabb072-d2fd-4495-8c44-fe7e3640792c", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1366.Screen_Pop_D_Light-375w-812h%403x~iphone.mov?alt=media&token=924eecfe-bfb2-4e25-8087-14df1429945e", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2013%2F1367.Screen_Pop_D_Dark-375w-812h%403x~iphone.mov?alt=media&token=953c60b4-9e59-461c-8b74-4c1f24875e3b", wallpaperName: "", osVersion: "iOS 13", year: "2019", os: "iOS", platform: "iPhone"),
   
    
    
    //iOS 14
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1711.Resonance_Blue_Light-428w-926h%403x~iphone.mov?alt=media&token=de55bd06-f759-4a87-a741-3f1a94ea13dc", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1712.Resonance_Blue_Dark-428w-926h%403x~iphone.mov?alt=media&token=8eeec805-f9c9-4280-8fe7-046b56732223", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1721.Resonance_Gold_Light-428w-926h%403x~iphone.mov?alt=media&token=93879b78-806e-4392-8796-ec1fbccc63aa", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1722.Resonance_Gold_Dark-428w-926h%403x~iphone.mov?alt=media&token=51daffca-3252-43f6-8ede-5a2766409ef8", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1731.Resonance_Space_Gray_Light-428w-926h%403x~iphone.mov?alt=media&token=856e45ae-c1b5-4727-80d4-1da7ac301105", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1732.Resonance_Space_Gray_Dark-428w-926h%403x~iphone.mov?alt=media&token=99f889c7-ce0b-4dff-816b-34fc4d729915", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1741.Resonance_Silver_Light-428w-926h%403x~iphone.mov?alt=media&token=50ac70ad-8d08-4f5e-96e8-cdefbd416e57", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2014%2F1742.Resonance_Silver_Dark-428w-926h%403x~iphone.mov?alt=media&token=43d2985d-71e3-49ec-acb6-0a9293c4491e", wallpaperName: "", osVersion: "iOS 14", year: "2020", os: "iOS", platform: "iPhone"),
   
    
    //iOS 15
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1010.Pink-375w-812h%403x~iphone.m4v?alt=media&token=fdcb5dbb-d040-411b-9db8-fa69b22d3ce1", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1015.Green-375w-812h%403x~iphone.m4v?alt=media&token=6daf0669-f539-4cff-b490-1a9d58dcb7da", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1020.Yellow-375w-812h%403x~iphone.m4v?alt=media&token=546727de-8e05-404e-8719-477ebe698bd4", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1030.Orange_Ink-375w-812h%403x~iphone.m4v?alt=media&token=66f5082e-58f3-4417-bc6e-bd723250e91f", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1035.Blue_Ink-375w-812h%403x~iphone.m4v?alt=media&token=064a4ef2-961a-49ca-ad59-c6c74828142a", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1040.Pink_Ink-375w-812h%403x~iphone.m4v?alt=media&token=3ab3ed99-48a0-40f3-9656-9c6cf4ac30d1", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1100.Light_Blue_Ink-375w-812h%403x~iphone.m4v?alt=media&token=269afc8c-6508-4c37-a883-d6ef449fc3d7", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1105.White_Ink-375w-812h%403x~iphone.m4v?alt=media&token=8279cfd1-05ee-4e38-9007-eb6c8aa8f719", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
    MotionWallpaperDataModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Live%20wallpapers%2FiOS%2015%2F1110.Purple_Ink-375w-812h%403x~iphone.m4v?alt=media&token=5817afd9-275e-4b45-825b-20b128a9eac0", wallpaperName: "", osVersion: "iOS 15", year: "2021", os: "iOS", platform: "iPhone"),
   
    
]

