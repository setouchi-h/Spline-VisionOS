//
//  Spline_VisionOSApp.swift
//  Spline-VisionOS
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI

@main
struct Spline_VisionOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup(id: "volume") {
            VolumeView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.3, height: 0.3, depth: 0.3, in: .meters)
        
        ImmersiveSpace(id: "immersive") {
            ImmersiveView()
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
