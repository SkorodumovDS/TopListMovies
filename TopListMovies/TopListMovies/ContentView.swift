//
//  ContentView.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
   
    @AppStorage("titleOn") var savedTitleOn  = true
    @State var situation  = Situation(quizState: .question)
    var body: some View {
        TabView() {
            InfoView(savedTitleOn: savedTitleOn)
            .tabItem {
                Label("List", systemImage: "tray.full")
            }
            FilmsQuiz()
                .environmentObject(Situation(quizState: .question))
                .tabItem {
                    Label("Film's quiz" , systemImage: "dice")
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
