//
//  iOriginalWidgetsExtensionControl.swift
//  iOriginalWidgetsExtension
//
//  Created by Pietro Gambatesa on 10/21/24.
//

import AppIntents
import SwiftUI
#if os(iOS)
import WidgetKit

@available(iOS 18.0, *)
struct iOriginalWidgetsExtensionControl: ControlWidget {
    
    let kind: String = "WidgetKind"
    
    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(kind: kind, content: {
            ControlWidgetButton(action: OpeniOriginalAppIntent(), label: {
                HStack {
                    Image(systemName: "photo.fill")
                    Text("Open iOriginal")
                }
            })
        })
    }
    
}


@available(iOS 18.0, *)
struct OpeniOriginalAppIntent: AppIntent {
    
    static let title: LocalizedStringResource = "Open iOriginal"
    
    static var openAppWhenRun: Bool = true
    
    func perform() async throws -> some IntentResult & OpensIntent {
        return .result(
            opensIntent: OpenURLIntent(URL(string: "ioriginal://")!)
        )
    }
    
}

#endif
