//
//  SettingsView.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 05.12.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var playNotificationSounds = false
    @Binding var savedTitleOn : Bool
    
    enum NotifyMeAboutType: String, CaseIterable, Identifiable {
        case directMessages, mentions, anything
        var id: Self { self }
    }
    
    @State private var notifyMeAbout : NotifyMeAboutType = .anything
    
    enum ProfileImageSize: String, CaseIterable, Identifiable {
        case large, medium, small
        var id: Self { self }
    }
    
    @State private var profileImageSize : ProfileImageSize = .large
    @State private var speed = 50.0
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Form {
            Section(header: Text("Notifications")) {
                Picker("Notify Me About", selection: $notifyMeAbout) {
                    Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                    Text("Mentions").tag(NotifyMeAboutType.mentions)
                    Text("Anything").tag(NotifyMeAboutType.anything)
                }
                Toggle("Play notification sounds", isOn: $playNotificationSounds)
                Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
            }
            Section(header: Text("User Profiles")) {
                Picker("Profile Image Size", selection: $profileImageSize) {
                    Text("Large").tag(ProfileImageSize.large)
                    Text("Medium").tag(ProfileImageSize.medium)
                    Text("Small").tag(ProfileImageSize.small)
                }
                Toggle("List title enabled", isOn: $savedTitleOn)
                Slider(
                    value: $speed,
                    in: 0...100,
                    step: 5
                )
            }
        }
    }
}

//#Preview {
 //   SettingsView(true)
//}
