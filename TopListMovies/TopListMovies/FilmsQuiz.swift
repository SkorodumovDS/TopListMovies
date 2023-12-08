//
//  FilmsQuiz.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 05.12.2023.
//

import SwiftUI

struct FilmsQuiz: View {
    @State var text : String = "What's the film title of image presented?"
    @State var randomElement: Post = PostArray().data.randomElement()!
    var filmsArray  = PostArray().data
    var body: some View {
        VStack{
            Text(text)
                .animation(.easeInOut, value: text)
            randomElement.image
                .resizable()
                .animation(.easeInOut, value: randomElement.image)
            ForEach(filmsArray) { array in
            Button(array.title) {
                    if array.title == randomElement.title {
                        text = "Perfectly"
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0)
                        {
                            let previousElement = randomElement
                            let newElementArray = filmsArray.filter{$0.id != previousElement.id}
                            randomElement = newElementArray.randomElement()!
                            text = "What's the film title of image presented?"
                        }
                    }else {
                        text = "Wrong anwser, try again. What's the film title of image presented?"
                    }
                }
                Spacer()
            }
        }
    }
}

//#Preview {
 //   FilmsQuiz()
//}
