//
//  ImmersiveView.swift
//  Spline-VisionOS
//
//  Created by 橋本一輝 on 2024/09/23.
//

import SwiftUI
import RealityKit
import SplineRuntime

struct ImmersiveView: ImmersiveSpaceContent {
    var body: some ImmersiveSpaceContent {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/RRTnEaXXVq1KIolNkwI3/scene.splineswift")!

        // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        SplineImmersiveSpaceContent(sceneFileURL: url)
    }
}
