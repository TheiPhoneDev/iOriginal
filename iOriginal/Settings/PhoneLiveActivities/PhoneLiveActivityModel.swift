//
//  PhoneLiveActivityModel.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 10/24/24.
//

import Foundation
import SwiftUI

struct PhoneLiveActivityModel: Identifiable {
    var id = UUID()
    var phoneImage: String
    var phoneName: String
    var index: Int
    
    
}

let phoneLiveActivity: [PhoneLiveActivityModel] = [
    .init(phoneImage: "IPhone_1st_Gen.svg", phoneName: "iPhone 2g", index: 1),
    .init(phoneImage: "IPhone_1st_Gen.svg-2", phoneName: "iPhone 3g", index: 2),
    .init(phoneImage: "IPhone_1st_Gen.svg-3", phoneName: "iPhone 3gs", index: 3),
    .init(phoneImage: "IPhone_4_Mock_No_Shadow_PSD", phoneName: "iPhone 4", index: 4),
    .init(phoneImage: "IPhone_4S_No_shadow", phoneName: "iPhone 4S", index: 5),
    .init(phoneImage: "IPhone_5", phoneName: "iPhone 5", index: 6),
    .init(phoneImage: "IPhone_5s_Black", phoneName: "iPhone 5S", index: 7),
    .init(phoneImage: "IPhone_5s_Black", phoneName: "iPhone 5C", index: 8),
    .init(phoneImage: "IPhone6_silver_frontface", phoneName: "iPhone 6", index: 9),
    .init(phoneImage: "IPhone6_silver_frontface", phoneName: "iPhone 6 Plus", index: 10),
    .init(phoneImage: "IPhone_6s_vector.svg", phoneName: "iPhone 6S", index: 11),
    .init(phoneImage: "IPhone_6s_vector.svg", phoneName: "iPhone 6S Plus", index: 12),
    .init(phoneImage: "IPhone_SE_(1st_generation)_rose_gold.svg", phoneName: "iPhone SE 1st Gen", index: 13),
    .init(phoneImage: "IPhone_7_Jet_Black.svg", phoneName: "iPhone 7", index: 14),
    .init(phoneImage: "IPhone_7_Jet_Black.svg", phoneName: "iPhone 7 Plus", index: 15),
    .init(phoneImage: "IPhone_8_Product_Red_vector.svg", phoneName: "iPhone 8", index: 16),
    .init(phoneImage: "IPhone_8_Product_Red_vector.svg", phoneName: "iPhone 8 Plus", index: 17),
    .init(phoneImage: "IPhone_X_vector.svg", phoneName: "iPhone X", index: 18),
    .init(phoneImage: "IPhone_XS_Gold.svg", phoneName: "iPhone XS", index: 19),
    .init(phoneImage: "IPhone_XS_Gold.svg", phoneName: "iPhone XS Max", index: 20),
    .init(phoneImage: "IPhone_XR_Blue.svg", phoneName: "iPhone XR", index: 21),
    .init(phoneImage: "IPhone_11_Green.svg", phoneName: "iPhone 11", index: 22),
    .init(phoneImage: "IPhone_11_Pro_Midnight_Green.svg", phoneName: "iPhone 11 Pro", index: 23),
    .init(phoneImage: "IPhone_11_Pro_Midnight_Green.svg", phoneName: "iPhone 11 Pro Max", index: 24),
    .init(phoneImage: "IPhone_SE_(2nd_generation)_white_vector.svg", phoneName: "iPhone SE 2nd Gen", index: 25),
    .init(phoneImage: "IPhone_12_Blue.svg", phoneName: "iPhone 12 Mini", index: 26),
    .init(phoneImage: "IPhone_12_Blue.svg", phoneName: "iPhone 12", index: 27),
    .init(phoneImage: "IPhone_12_Pro_Gold.svg", phoneName: "iPhone 12 Pro", index: 28),
    .init(phoneImage: "IPhone_12_Pro_Gold.svg", phoneName: "iPhone 12 Pro Max", index: 29),
    .init(phoneImage: "IPhone_13_vector.svg", phoneName: "iPhone 13 mini", index: 30),
    .init(phoneImage: "IPhone_13_vector.svg", phoneName: "iPhone 13", index: 31),
    .init(phoneImage: "IPhone_13_Pro_vector.svg", phoneName: "iPhone 13 Pro", index: 32),
    .init(phoneImage: "IPhone_13_Pro_vector.svg", phoneName: "iPhone 13 Pro Max", index: 33),
    .init(phoneImage: "IPhone_SE_(2nd_generation)_white_vector.svg", phoneName: "iPhone SE 3rd Gen", index: 34),
    .init(phoneImage: "IPhone_14_vector.svg", phoneName: "iPhone 14", index: 35),
    .init(phoneImage: "IPhone_14_vector.svg", phoneName: "iPhone 14 Plus", index: 36),
    .init(phoneImage: "IPhone_14_Pro_vector.svg", phoneName: "iPhone 14 Pro", index: 37),
    .init(phoneImage: "IPhone_14_Pro_vector.svg", phoneName: "iPhone 14 Pro Max", index: 38),
    .init(phoneImage: "IPhone_15_Vector.svg", phoneName: "iPhone 15", index: 39),
    .init(phoneImage: "IPhone_15_Vector.svg", phoneName: "iPhone 15 Plus", index: 40),
    .init(phoneImage: "IPhone_15_Pro_Vector.svg", phoneName: "iPhone 15 Pro", index: 41),
    .init(phoneImage: "IPhone_15_Pro_Vector.svg", phoneName: "iPhone 15 Pro Max", index: 42),
    .init(phoneImage: "IPhone_16_Vector.svg", phoneName: "iPhone 16", index: 43),
    .init(phoneImage: "IPhone_16_Vector.svg", phoneName: "iPhone 16 Plus", index: 44),
    .init(phoneImage: "IPhone_16_Pro_Vector.svg", phoneName: "iPhone 16 Pro", index: 45),
    .init(phoneImage: "IPhone_16_Pro_Vector.svg", phoneName: "iPhone 16 Pro Max", index: 46),
    


]
