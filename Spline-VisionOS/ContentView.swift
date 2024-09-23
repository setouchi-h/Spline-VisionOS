//
//  ContentView.swift
//  Spline-VisionOS
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State private var isShowVolume = false
    @State private var isShowImmersiveSpace = false
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        VStack {
            CharacterView()
            
            HStack {
                Toggle("Show Volume", isOn: $isShowVolume)
                    .toggleStyle(.button)
                    .onChange(of: isShowVolume) { _, isShowing in
                        if isShowing {
                            openWindow(id: "volume")
                        } else {
                            dismissWindow(id: "volume")
                        }
                    }
                
                Toggle("Show Immersive Space", isOn: $isShowImmersiveSpace)
                    .toggleStyle(.button)
                    .onChange(of: isShowImmersiveSpace) { _, isShowing in
                        Task {
                            if isShowing {
                                await openImmersiveSpace(id: "immersive")
                            } else {
                                await dismissImmersiveSpace()
                            }
                        }
                    }
            }
            .padding()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
