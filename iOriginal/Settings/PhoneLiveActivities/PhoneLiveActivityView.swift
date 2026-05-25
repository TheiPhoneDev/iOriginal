//
//  PhoneLiveActivityView.swift
//  AppleWallpapers
//
//  Created by Pietro Gambatesa on 10/24/24.
//

#if os(iOS)
import SwiftUI
import ActivityKit

struct PhoneLiveActivityView: View {
    
    @State private var currentActivity: Activity<iOriginalWidgetsExtensionAttributes>?
    @State private var phoneActivities: [Int: Activity<iOriginalWidgetsExtensionAttributes>] = [:]

    
    var phonesArray: [PhoneLiveActivityModel] = []
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @AppStorage("selected_phone") var selectedPhone: Int = 1
    @AppStorage("liveActivityEnabled") var isLiveActivityEnabled: Bool = false
    @AppStorage("startActivity") var startDynamicIslandActivity: Bool = false

    @StateObject var deviceChecker = DeviceChecker()
    
    
    var body: some View {
        ZStack {
            VStack {
                List {
                    Toggle(isOn: $isLiveActivityEnabled, label: {
                        Text(deviceChecker.hasDynamicIsland == true ? "🏝️ Dynamic island activity" : "⚡️ Live activity")
                    })
                    if isLiveActivityEnabled == true {
                        
                        Button {
                            if startDynamicIslandActivity == true {
                                stopLiveActivity()
                                startDynamicIslandActivity = false
                            } else {
                                startDynamicIslandActivity = true
                                startLiveActivity(for: selectedPhone)

                            }

                        } label: {
                            Text(startDynamicIslandActivity == true ? "Stop Live Activity" : "Start Live Activity")
                                .foregroundColor(startDynamicIslandActivity == true ? .red : .blue)
                        }
                    }
                   
                }.overlay(content: {
                    if isLiveActivityEnabled == true {
                        ScrollView(.vertical, showsIndicators: true, content: {
                        LazyVGrid(columns: columns, content: {
                            ForEach(phonesArray) { phone in
                                
                                Button {
                                    self.selectedPhone = phone.index
                                    //                                    startLiveActivity(for: selectedPhone)
                                    if startDynamicIslandActivity == true {
                                        updateLiveActivity(for: selectedPhone)
                                    }
                                } label: {
                                    ZStack {
                                        Image(phone.phoneImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 140)
                                            .padding(10)
                                        if selectedPhone == phone.index {
                                            ZStack {
                                                Circle()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.white)
                                                Image(systemName: "checkmark")
                                                
                                            }
                                        }
                                    }
                                }
                            }
                        })
                        }).padding(.top,150)
                    }
                })
            }
        }.navigationTitle("Live activities")
            .navigationBarTitleDisplayMode(.inline)
            
    }
    
    func startLiveActivity(for index: Int) {
        guard let selectedPhone = phoneLiveActivity.first(where: { $0.index == index }) else {
            print("Error: No phone model found for the provided index \(index)")
            return
        }
        
        let attributes = iOriginalWidgetsExtensionAttributes(title: selectedPhone.phoneName)
        let contentState = iOriginalWidgetsExtensionAttributes.ContentState(phoneImage: selectedPhone.phoneImage, phoneName: selectedPhone.phoneName, index: selectedPhone.index)
        
        do {
            currentActivity = try Activity<iOriginalWidgetsExtensionAttributes>.request(
                attributes: attributes,
                contentState: contentState,
                pushType: nil)
        } catch {
            print("Error starting activity: \(error.localizedDescription)")
        }
    }
    
    func stopLiveActivity() {
        if let activity = currentActivity {
            Task {
                await activity.end(dismissalPolicy: .immediate)
                currentActivity = nil
                print("Live activity stopped successfully.")
            }
        } else {
            print("No live activity to stop.")
        }
    }
    



    func updateLiveActivity(for index: Int) {
        guard let selectedPhone = phoneLiveActivity.first(where: { $0.index == index }) else {
            print("Error: No phone model found for the provided index \(index)")
            return
        }
        
        let updatedContentState = iOriginalWidgetsExtensionAttributes.ContentState(
            phoneImage: selectedPhone.phoneImage,
            phoneName: selectedPhone.phoneName,
            index: selectedPhone.index
        )
        
        if let activity = currentActivity {
            Task {
                await activity.update(using: updatedContentState)
                print("Live activity updated with new content state.")
            }
        } else {
            print("No live activity to update.")
        }
    }



}

#Preview {
    PhoneLiveActivityView(phonesArray: phoneLiveActivity)
}

#endif
