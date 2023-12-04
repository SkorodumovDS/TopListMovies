//
//  PostArray.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 04.12.2023.
//

import Foundation
import SwiftUI

struct PostArray {
    let data : [Post] = Post.make()
}

public extension Post {
    
    static func make() -> [Post] {
        [
            Post(
                title: "The Dark Knight",
                description: """
                When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.
                """,
                image: Image("DarkKnight")
            ),
            Post(
                title: "Schindler's List",
                description: """
                In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.
                """,
                image: Image("Shindler")
            ),
            Post(
                title: "Fight Club",
                description: """
                An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.
                """,
                image: Image("Fight")
            ),
            Post(
                title: "Inception",
                description: """
                A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.
                """,
                image: Image("Inception")
            ),
        ]
    }
}

