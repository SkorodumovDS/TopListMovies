//
//  FilmsQuiz.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 05.12.2023.
//

import SwiftUI

struct FilmsQuiz: View {
    
    var randomElement: Post = PostArray().data.randomElement()!
    var filmsArray  = PostArray().data
    var body: some View {
        VStack{
            Text("What's the film title of image presented?")
            randomElement.image
            
            ForEach(filmsArray) { array in
            Button(array.title) {
                    if array.title == randomElement.title {
                        
                    }else {
                        
                    }
                }
                Spacer()
            }
        }
        .animation(.easeInOut)
    }
}

//#Preview {
 //   FilmsQuiz()
//}
