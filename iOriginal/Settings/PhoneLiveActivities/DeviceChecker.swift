//
//  DeviceChecker.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 11/1/24.
//

#if os(iOS)
import Foundation
import SwiftUI
import UIKit

class DeviceChecker: ObservableObject {
    
    @AppStorage("dynamicIsland") var hasDynamicIsland: Bool = false
    
    func checkForDynamicIsland() -> Bool {

        let device = UIDevice.current
        let screenHeight = Int(UIScreen.main.bounds.height)
        let screenWidth = Int(UIScreen.main.bounds.width)

        let dynamicIslandModels = [
            // iPhone 14 Pro Series
            (screenHeight: 844, screenWidth: 390),  // iPhone 14 Pro
            (screenHeight: 926, screenWidth: 428),  // iPhone 14 Pro Max
            
            // iPhone 15 Series
            (screenHeight: 852, screenWidth: 393),  // iPhone 15
            (screenHeight: 932, screenWidth: 430),  // iPhone 15 Plus
            (screenHeight: 852, screenWidth: 393),  // iPhone 15 Pro
            (screenHeight: 932, screenWidth: 430),  // iPhone 15 Pro Max
            
            // iPhone 16 Series (Projected dimensions based on rumors)
            (screenHeight: 852, screenWidth: 393),  // iPhone 16
            (screenHeight: 932, screenWidth: 430),  // iPhone 16 Plus
            (screenHeight: 874, screenWidth: 402),  // iPhone 16 Pro
            (screenHeight: 956, screenWidth: 440)   // iPhone 16 Pro Max
        ]

        return dynamicIslandModels.contains { $0.screenHeight == screenHeight && $0.screenWidth == screenWidth }
   }
    
    
}
#endif


