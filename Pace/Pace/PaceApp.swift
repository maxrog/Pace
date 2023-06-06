//
//  PaceApp.swift
//  Pace
//
//  Created by Max Rogers on 6/5/23.
//

/*
 Things TODO
 New Maps SwiftUI stuff
 Swift Charts Framework
 Swift Data - Core Data Alternative
 
 Widget - Weekly Mileage Recap?
 Watch Integration
 
 SF Symbol Animation
 */

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
