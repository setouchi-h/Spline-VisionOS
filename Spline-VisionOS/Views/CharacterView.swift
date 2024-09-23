//
//  CharacterView.swift
//  Spline-VisionOS
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI
import SplineRuntime

struct CharacterView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/hpG6jxMiHcmKTdOT3kOW/scene.splineswift")!
        
        SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}

#Preview {
    CharacterView()
}
