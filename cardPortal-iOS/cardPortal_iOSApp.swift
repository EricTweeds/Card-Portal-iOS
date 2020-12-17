//
//  cardPortal_iOSApp.swift
//  cardPortal-iOS
//
//  Created by Eric Tweedle on 2020-11-24.
//

import SwiftUI

@main
struct cardPortal_iOSApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

