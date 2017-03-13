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


var usedIndex: [Int] = []


struct RandomQuestionPicker {
    
    var questions: [[String: String]]
    
    
    
    
    func checkRepeat() -> Int {
        
        var redo = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        
        while (usedIndex.contains(redo) == true) {
            redo = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        }
        
        usedIndex.append(redo)
        
        return redo
    }

    
    func randomQuestion(questionLabel: UILabel, answer1: UIButton, answer2: UIButton, answer3: UIButton, answer4: UIButton) {
        
        let noRepeat = checkRepeat()
        
        var index = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
//        Make sur question doesnt get repeated
        while (index != noRepeat) {
            index = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        }
        
        
        questionLabel.text = questions[index]["Q"]
        
        
        if (index == 0) {
            answer1.setTitle(questions[index]["false1"], for: .normal)
            answer2.setTitle(questions[index]["false2"], for: .normal)
            answer3.setTitle(questions[index]["rightAnswer"], for: .normal)
            answer4.backgroundColor = UIColor.clear
            answer4.setTitleColor(UIColor.clear, for: .normal)
            answer4.isEnabled = false
            
        } else if (index == 1) {
            answer2.setTitle(questions[index]["false3"], for: .normal)
            answer1.setTitle(questions[index]["rightAnswer"], for: .normal)
            answer3.setTitle(questions[index]["false2"], for: .normal)
            answer4.setTitle(questions[index]["false1"], for: .normal)
            answer4.setTitleColor(UIColor.black, for: .normal)
            answer4.isEnabled = true
            
        } else if (index == 2) {
            answer3.setTitle(questions[index]["false1"], for: .normal)
            answer1.setTitle(questions[index]["false3"], for: .normal)
            answer2.setTitle(questions[index]["rightAnswer"], for: .normal)
            answer4.setTitle(questions[index]["false2"], for: .normal)
            answer4.setTitleColor(UIColor.black, for: .normal)
            answer4.isEnabled = true
        
        } else if (index == 3) {
            answer3.setTitle(questions[index]["false2"], for: .normal)
            answer1.setTitle(questions[index]["false1"], for: .normal)
            answer2.setTitle(questions[index]["false3"], for: .normal)
            answer4.setTitle(questions[index]["rightAnswer"], for: .normal)
            answer4.setTitleColor(UIColor.black, for: .normal)
            answer4.isEnabled = true
            
        } else if (index == 4) {
            answer1.setTitle(questions[index]["false1"], for: .normal)
            answer2.setTitle(questions[index]["false2"], for: .normal)
            answer3.setTitle(questions[index]["rightAnswer"], for: .normal)
            answer4.backgroundColor = UIColor.clear
            answer4.setTitleColor(UIColor.clear, for: .normal)
            answer4.isEnabled = false
        }
    }

}

let questions = RandomQuestionPicker(questions: [
    ["Q": "In Ferrari F12 TDF, What does the 'TDF' stand for?", "rightAnswer": "Tour de France", "false1": "Secret Ferrari abbreviation", "false2": "Total Demon Features"],
    ["Q": "The Ferrari 458's exhaust system was designed after what car?", "rightAnswer": "Ferrari F40", "false1": "Ferrari F430", "false2": "Ferrari F50", "false3": "Ferrari FF"],
    ["Q": "In Ferrari 458, what does the '458' stand for?", "rightAnswer": "4.5 Litre V8", "false1": "458 horse power", "false2": "458 cars manufactured", "false3": "$458, 000"],
    ["Q": "What hyper car did Ferrari release in 2016?", "rightAnswer": "LaFerrari Aperta", "false1": "LaFerrari", "false2": "F12 TDF", "false3": "GTC4 Lusso"],
    ["Q": "What car was named after Ferrari's founder?", "rightAnswer": "Ferrari Enzo", "false1": "575 Maranello", "false2": "Scuderia"]
    ])

