//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let storyText: String,
        answer1: String,
        answer2: String,
        answer1Dest: Int,
        answer2Dest: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.storyText = title
        self.answer1 = choice1
        self.answer2 = choice2
        self.answer1Dest = choice1Destination
        self.answer2Dest = choice2Destination
    }
}
