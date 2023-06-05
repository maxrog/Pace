//
//  TabView.swift
//  Pace
//
//  Created by Max Rogers on 6/5/23.
//

import SwiftUI

struct TabNavigationView: View {
    
    @StateObject var settings = SettingsViewModel()
    
    var body: some View {
        TabView(selection: $settings.selectedTabIndex) {
            Text("Today")
                .background(settings.theme.backgroundColor)
                .foregroundColor(settings.theme.textColor)
                .tabItem {
                    Image(systemName: "point.3.connected.trianglepath.dotted")
                        .foregroundColor(settings.theme.accentColor)
                }
                .tag(Tabs.today.rawValue)
            Text("Stats")
                .background(settings.theme.backgroundColor)
                .foregroundColor(settings.theme.textColor)
                .tabItem {
                    Image(systemName: "point.3.connected.trianglepath.dotted")
                        .foregroundColor(settings.theme.accentColor)
                }
                .tag(Tabs.stats.rawValue)
            SettingsView()
                .tabItem {
                    Image(systemName: "point.3.connected.trianglepath.dotted")
                        .foregroundColor(settings.theme.accentColor)
                }
                .tag(Tabs.settings.rawValue)
        }
        .environmentObject(settings)
    }
    
    /// Tabs
    private enum Tabs: Int {
        case today = 0
        case stats
        case settings
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigationView()
    }
}
