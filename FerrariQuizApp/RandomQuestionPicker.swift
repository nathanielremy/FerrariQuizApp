//
//  RandomQuestionPicker.swift
//  FerrariQuizApp
//
//  Created by Nathaniel Remy on 2017-03-08.
//  Copyright © 2017 Nathaniel Remy. All rights reserved.
//

import Foundation
import UIKit
import GameKit

struct RandomQuestionPicker {
    
//Questions
    var questions = [
        ["Q": "In Ferrari F12 TDF, What does the 'TDF' stand for?", "A": "Tour de France"],
        ["Q": "The Ferrari 458's exhaust system was designed after what car?", "A": "Ferrari F40"],
        ["Q": "In Ferrari 458, what does the '458' stand for?", "A": "4.5 Litre V8"],
        ["Q": "What hyper car did Ferrari release in 2016?", "A": "LaFerrari Aperta"],
        ["Q": "What car was named after Ferrari's founder?", "A": "Ferrari Enzo"]
    ]
//print out random question
    mutating func randomQuestion() -> String{
        let index = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
//        questions = questions - [index]
        return questions[index]["Q"]!
    }
}

