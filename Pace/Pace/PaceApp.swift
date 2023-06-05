//
//  PaceApp.swift
//  Pace
//
//  Created by Max Rogers on 6/5/23.
//

import SwiftUI

@main
struct PaceApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            TabNavigationView()
        }.onChange(of: scenePhase) { newScenePhase in
            switch scenePhase {
            case .active:
                /// application became active
                break
            case .background:
                /// application went to background
                break
            case .inactive:
                /// application became inactive
                break
            default:
                break
            }
        }
    }
}
