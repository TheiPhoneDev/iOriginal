//
//  ListItemModel.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 12/31/24.
//

import Foundation
import SwiftUI

struct ListItemModel: Identifiable {
    var id=UUID()
    var osName: String
    var deviceImage: String
    var attachedView: AnyView
}
