//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Szymek on 17/07/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let corrAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answer = a
        self.corrAnswer = correctAnswer
    }
}
