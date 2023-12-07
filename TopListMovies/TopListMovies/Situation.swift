//
//  Situation.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 07.12.2023.
//

import Foundation

class Situation : ObservableObject {
    
    enum Qiuz: String {
        case question = "What's the film title of image presented?"
        case wrongAnswer = "Wrong answer , What's the film title of image presented?"
        case perfect = "Perfectly"
    }
    
    public var quizState : Qiuz
    
    init(quizState: Qiuz) {
        self.quizState = quizState
    }
}

