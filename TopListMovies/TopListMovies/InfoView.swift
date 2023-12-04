//
//  ContentView.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 04.12.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(PostArray().data) {post in
                
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }.navigationTitle("Movies top list")
                .listStyle(.plain)
        }
    }
}


