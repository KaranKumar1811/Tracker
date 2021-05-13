//
//  TrackerApp.swift
//  Tracker
//
//  Created by Sandeep Jangra on 2021-05-03.
//

import SwiftUI

@main
struct TrackerApp: App {
  @StateObject  var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView
            {
                NavigationView
                {
                    ContentView(location: locations.primary)
                }.tabItem
                    {
                        Image(systemName: "airplane.circle.fill")
                        Text("Discover")
                    }
                NavigationView
                {
                    WorldView()
                }.tabItem
                    {
                        Image(systemName: "star.fill")
                        Text("Location")
                    }
                NavigationView
                {
                    TipsView()
                }.tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                
            }.environmentObject(locations)
        }
    }
}
