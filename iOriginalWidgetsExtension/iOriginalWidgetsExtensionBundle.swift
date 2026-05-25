//
//  iOriginalWidgetsExtensionBundle.swift
//  iOriginalWidgetsExtension
//
//  Created by Pietro Gambatesa on 10/21/24.
//

import WidgetKit
import SwiftUI

@main
struct iOriginalWidgetsExtensionBundle: WidgetBundle {
    var body: some Widget {
        if #available(iOS 18.0, *) {
            iOriginalWidgetsExtensionControl()
        }
        iOriginalWidgetsExtension()
        iOriginalWidgetsExtensionLiveActivity()
    }
}
