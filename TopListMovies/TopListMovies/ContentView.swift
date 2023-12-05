//
//  ContentView.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
   
    @AppStorage("titleOn") var savedTitleOn  = true
    
    var body: some View {
        TabView() {
            InfoView(savedTitleOn: savedTitleOn)
            .tabItem {
                Label("List", systemImage: "tray.full")
            }
            HelloView()
                .tabItem {
                    Label("Hello" , systemImage: "hand.raised")
                }
            SettingsView(savedTitleOn: $savedTitleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

//#Preview {
 //   ContentView()
//}
