//
//  InfoRow.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 04.12.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            Text(post.title)
                .font(.title)
            Spacer()
        }
    }
}

#Preview {
    InfoRow(post: Post.make().first!)
}
