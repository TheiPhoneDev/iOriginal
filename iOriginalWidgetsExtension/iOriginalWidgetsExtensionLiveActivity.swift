//
//  iOriginalWidgetsExtensionLiveActivity.swift
//  iOriginalWidgetsExtension
//
//  Created by Pietro Gambatesa on 10/21/24.
//

#if os(iOS)
import ActivityKit
import WidgetKit
import SwiftUI

struct iOriginalWidgetsExtensionAttributes: ActivityAttributes {
        public struct ContentState: Codable, Hashable {
            var phoneImage: String
            var phoneName: String
            var index: Int
        }
        
        // Static information about the activity
        var title: String
}



struct iOriginalWidgetsExtensionLiveActivity: Widget {
    
    @StateObject var dimensions = SharedDimensions()
    
    
    
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: iOriginalWidgetsExtensionAttributes.self) { context in
            // Lock screen and banner UI
            VStack {
                HStack {
                    Image(context.state.phoneImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Text(context.state.phoneName)
                        .foregroundColor(.white)
                        .font(.system(.largeTitle, design: .rounded, weight: .semibold))
                }
            }.padding()
            .activityBackgroundTint(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI regions for Dynamic Island
                DynamicIslandExpandedRegion(.leading) {
                    Image(context.state.phoneImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: dimensions.dynamicwidth, height: dimensions.dynamicheight)
                        .padding()
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text(context.state.phoneName)
                        .foregroundColor(.white)
                        .font(.system(.title3, design: .rounded, weight: .semibold))
                }
            } compactLeading: {
                Image(context.state.phoneImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: dimensions.width, height: dimensions.height)
            } compactTrailing: {
                Text(context.state.phoneName)

                    
            } minimal: {
                Image(context.state.phoneImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: dimensions.width, height: dimensions.height)
            }
        }
    }
}

class SharedDimensions: ObservableObject {
    @Published var width: CGFloat = 26
    @Published var height: CGFloat = 26
    
    //for expanded region
    @Published var dynamicwidth: CGFloat = 35
    @Published var dynamicheight: CGFloat = 35
}





extension iOriginalWidgetsExtensionAttributes {
    fileprivate static var preview: iOriginalWidgetsExtensionAttributes {
        iOriginalWidgetsExtensionAttributes(title: "iPhone Models")
    }
}

extension iOriginalWidgetsExtensionAttributes.ContentState {
    fileprivate static var samplePhone: iOriginalWidgetsExtensionAttributes.ContentState {
        iOriginalWidgetsExtensionAttributes.ContentState(phoneImage: "IPhone_1st_Gen.svg-2", phoneName: "iPhone 2g", index: 1)
    }
}

#endif
//#Preview("Notification", as: .content, using: iOriginalWidgetsExtensionAttributes.preview) {
//   iOriginalWidgetsExtensionLiveActivity()
//} contentStates: {
//    iOriginalWidgetsExtensionAttributes.ContentState.samplePhone
//}
