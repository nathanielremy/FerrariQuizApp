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

class RandomQuestionPicker {
    
    var questions: [[String: String]] = [
        ["Q": "In Ferrari F12 TDF, What does the 'TDF' stand for?", "A": "Tour de France"],
        ["Q": "The Ferrari 458's exhaust system was designed after what car?", "A": "Ferrari F40"],
        ["Q": "In Ferrari 458, what does the '458' stand for?", "A": "4.5 Litre V8"],
        ["Q": "What hyper car did Ferrari release in 2016?", "A": "LaFerrari Aperta"],
        ["Q": "What car was named after Ferrari's founder?", "A": "Ferrari Enzo"]
    ]

    func randomQuestion(answer1: UIButton, answer2: UIButton, answer3: UIButton, answer4: UIButton) -> String {
        let index = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        let indexVal = questions[index]
        
        if (indexVal == questions[0]) {
            answer1.setTitle(indexVal["A"], for: .normal)
            answer2.setTitle("Secret Ferrari abbreviation", for: .normal)
            answer3.setTitle("Total Demon Features", for: .normal)
            answer4.setTitle("Total Driving Force", for: .normal)
            
            
        } else if (indexVal == questions[1]) {
            answer2.setTitle(indexVal["A"], for: .normal)
            answer1.setTitle("Ferrari F430", for: .normal)
            answer3.setTitle("Ferrari F50", for: .normal)
            answer4.setTitle("Ferrari Enzo", for: .normal)
            
            
        } else if (indexVal == questions[2]) {
            answer3.setTitle(indexVal["A"], for: .normal)
            answer1.setTitle("458 HorsePower", for: .normal)
            answer2.setTitle("458 cars have been manufactured", for: .normal)
            answer4.setTitle("$458 000", for: .normal)
            
            
        } else if (indexVal == questions[3]) {
            answer4.setTitle(indexVal["A"], for: .normal)
            answer1.setTitle("LaFerrari", for: .normal)
            answer2.setTitle("F12 TDF", for: .normal)
            answer3.setTitle("GTC4 Lusso", for: .normal)
            
            
        } else if (indexVal == questions[4]) {
            answer3.setTitle(indexVal["A"], for: .normal)
            answer1.setTitle("575 Maranello", for: .normal)
            answer2.setTitle("Scuderia", for: .normal)
            answer4.setTitle("SuperAmerica", for: .normal)
            
        
        } else {
            print("Something went wrong")
        }
        
        
        
        return indexVal["Q"]!
    }
}

