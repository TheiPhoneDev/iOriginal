//
//  iPodWallpapersModel.swift
//  iOriginal
//
//  Created by Pietro Gambatesa on 9/8/24.
//

import Foundation
import SwiftUI

struct iPodWallapapersModel: Identifiable {
    var id = UUID()
    var wallpaperImage: String
    var year: String
    var platform: String
}


let iPodWallpapers = [
    //iPod Touch 1st gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F00_iPod.png?alt=media&token=9940d0cf-837d-456f-8d42-a4e56c32c922", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F01_iPod.png?alt=media&token=5f7a81a9-82d3-42cf-b839-bc353016b3e7", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F02_iPod.png?alt=media&token=5503427a-6ee9-430a-9fc6-0191e3af82e7", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F03_iPod.png?alt=media&token=4df38b89-301f-4665-90a3-3c093414ad1d", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F05_iPod.png?alt=media&token=163572d7-5443-46d8-95a2-82a5db62077f", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F06_iPod.png?alt=media&token=068e9d45-9aa0-4caf-ae66-9476ce369e98", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F07_iPod.png?alt=media&token=b58d4086-9c3c-4a89-a0b5-bed6971b0481", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F08_iPod.png?alt=media&token=65a13654-1e8a-46c4-b59a-685f78813d23", year: "2007", platform: "iPod Touch 1st gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%201st%20gen%2F09_iPod.png?alt=media&token=6cd2ef82-f31c-4cca-a0ce-b8f61a8c5ff0", year: "2007", platform: "iPod Touch 1st gen"),
   
    //iPod Touch 2nd gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F00_iPod.png?alt=media&token=6939e502-310b-4fd1-8c25-58a0db15b79f", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F01_iPod.png?alt=media&token=49fba0bf-806a-4dd0-b589-5cb2fb840d58", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F02_iPod.png?alt=media&token=e5146275-b970-44b9-8918-ccc4928408b5", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F03_iPod.png?alt=media&token=223dfe23-a907-4763-b796-ba46457e8ee9", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F05_iPod.png?alt=media&token=316aaa4d-224a-47cf-bf31-2badc8da2500", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F06_iPod.png?alt=media&token=77e115ee-da9e-4ca7-9873-d4a33c4f8187", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F07_iPod.png?alt=media&token=0228accc-9309-48f3-9816-f85be9c0c73a", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F08_iPod.png?alt=media&token=2c1be5a3-ad99-4773-8039-6d24925ff8d3", year: "2008", platform: "iPod Touch 2nd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%202nd%20gen%2F09_iPod.png?alt=media&token=d082a504-18e9-4e12-81f5-3649342a1915", year: "2008", platform: "iPod Touch 2nd gen"),

    //iPod Touch 3rd gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F00_iPod.png?alt=media&token=aac3eef2-067c-4b01-b65b-0654c7fbd4e6", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F01_iPod.png?alt=media&token=0f1edd7f-3fd2-4e05-ab38-e62b031cad22", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F02_iPod.png?alt=media&token=2ac00ff5-24e5-4e25-8d8b-02c1f52c4c74", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F03_iPod.png?alt=media&token=15e1a7cf-6c47-4381-835b-3603a1e049ab", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F05_iPod.png?alt=media&token=4325e155-6d79-42df-b242-5cc1b5420af9", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F06_iPod.png?alt=media&token=856579d3-02bb-48ee-b276-9b20afffcfae", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F07_iPod.png?alt=media&token=f06c0dab-be48-47d0-b662-48e03b9d9949", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F08_iPod.png?alt=media&token=fa40c0d1-e489-46f5-9869-446ce80aff36", year: "2009", platform: "iPod Touch 3rd gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%203rd%20gen%2F09_iPod.png?alt=media&token=fecb0a93-3fd4-449e-8e39-76c433cc483f", year: "2009", platform: "iPod Touch 3rd gen"),

    //iPod Touch 4th gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%204th%20gen%2F00_iPod.png?alt=media&token=8b4c85fd-dcce-4cb0-b1f9-baaf933e6f2b", year: "2010", platform: "iPod Touch 4th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%204th%20gen%2F01_iPod.png?alt=media&token=0a94595d-0e69-40dd-aa8f-3d0e84ad92b8", year: "2010", platform: "iPod Touch 4th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%204th%20gen%2F02_iPod.png?alt=media&token=da6de2b6-e2bb-47e7-a7e6-d037f6dc7d06", year: "2010", platform: "iPod Touch 4th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%204th%20gen%2F03_iPod.png?alt=media&token=68d27be7-55f7-4580-9484-fd61251c258a", year: "2010", platform: "iPod Touch 4th gen"),
    
    //iPod Touch 5th gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%205th%20gen%2F00_iPod.png?alt=media&token=83229036-4490-450c-94b5-f7bb0a970d16", year: "2013", platform: "iPod Touch 5th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%205th%20gen%2F01_iPod.png?alt=media&token=48a4c9ef-403e-4c30-b37f-af1055ea44da", year: "2013", platform: "iPod Touch 5th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%205th%20gen%2F02_iPod.png?alt=media&token=122111dd-e514-4d4e-a615-da420e2fe4b8", year: "2013", platform: "iPod Touch 5th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%205th%20gen%2F03_iPod.png?alt=media&token=4fa47c93-68f6-486d-840d-ebf9dc1b5965", year: "2013", platform: "iPod Touch 5th gen"),

    //iPod Touch 6th gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%206th%20gen%2F200.Dots_Silver-cuprum%402x~ipod.png?alt=media&token=d7d96e10-29b3-48a3-9a88-4354c9f6bd19", year: "2015", platform: "iPod Touch 6th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%206th%20gen%2F201.Dots_Sparrow-cuprum%402x~ipod.png?alt=media&token=fb99c08e-0282-41f9-91b5-d699f057006d", year: "2015", platform: "iPod Touch 6th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%206th%20gen%2F202.Dots_Gold-cuprum%402x~ipod.png?alt=media&token=042e30c1-c429-4819-980c-1f12aa1cb6f0", year: "2015", platform: "iPod Touch 6th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%206th%20gen%2F203.Dots_Pink-cuprum%402x~ipod.png?alt=media&token=97647ec6-5473-4450-b06b-76507eb68779", year: "2015", platform: "iPod Touch 6th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%206th%20gen%2F204.Dots_Blue-cuprum%402x~ipod.png?alt=media&token=27328caf-3a21-4c44-abf4-2b7f9173c1c9", year: "2015", platform: "iPod Touch 6th gen"),

    //iPod Touch 7th gen
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%207th%20gen%2F505.Dots_Blue-cuprum%402x~ipod.jpg?alt=media&token=aee9d871-3470-4f32-bf10-44fa29382052", year: "2019", platform: "iPod Touch 7th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%207th%20gen%2F510.Dots_Gold-cuprum%402x~ipod.jpg?alt=media&token=d7f218e6-ebfe-40d4-ac10-492a65fc871a", year: "2019", platform: "iPod Touch 7th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%207th%20gen%2F515.Dots_Pink-cuprum%402x~ipod.jpg?alt=media&token=69460fcf-027f-4cf9-b6df-377ec5c5a30e", year: "2019", platform: "iPod Touch 7th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%207th%20gen%2F520.Dots_Silver-cuprum%402x~ipod.jpg?alt=media&token=ad668206-849f-490c-9ca7-b8acb6acbf0a", year: "2019", platform: "iPod Touch 7th gen"),
    iPodWallapapersModel(wallpaperImage: "https://firebasestorage.googleapis.com/v0/b/appstorage-8c839.appspot.com/o/Devices%20wallpapers%2FiPod%2FiPod%20touch%207th%20gen%2F525.Dots_Sparrow-cuprum%402x~ipod.jpg?alt=media&token=9dc95362-d88b-4360-9c36-f4a356e56388", year: "2019", platform: "iPod Touch 7th gen"),

    
]

