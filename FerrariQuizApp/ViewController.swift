//
//  ViewController.swift
//  FerrariQuizApp
//
//  Created by Nathaniel Remy on 2017-03-08.
//  Copyright © 2017 Nathaniel Remy. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var proceedQuestions: UIButton!
    @IBOutlet weak var rightOrWrong: UILabel!
    
    var correctAnswers: Int = 0
    var answeredQuestions: Int = 0
    let totalQuestions = 5
    
    
    var randomQuestionPicker = RandomQuestionPicker()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//rounded corners
        answer1.layer.cornerRadius = 10
        answer2.layer.cornerRadius = 10
        answer3.layer.cornerRadius = 10
        answer4.layer.cornerRadius = 10
        proceedQuestions.layer.cornerRadius = 10
        
        proceedQuestions.isHidden = true
        
        rightOrWrong.isHidden = true
        
        printQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func verifyanswer(_ sender: UIButton) {
        answeredQuestions += 1
        proceedQuestions.isHidden = false
        
        if (sender == answer1 || sender == answer2 || sender == answer3 || sender == answer4) {
            if (sender.currentTitle == questions[0]["rightAnswer"]) || (sender.currentTitle == questions[1]["rightAnswer"]) || (sender.currentTitle == questions[2]["rightAnswer"]) || (sender.currentTitle == questions[3]["rightAnswer"]) || (sender.currentTitle == questions[4]["rightAnswer"]) {
                rightOrWrong.textColor = UIColor(colorLiteralRed: 0, green: 255/255, blue: 0, alpha: 1.0)
                rightOrWrong.text = "Correct answer"
                rightOrWrong.isHidden = false
            
            
            } else {
                
                let answerButtons = [answer1, answer2, answer3, answer4]
                
                rightOrWrong.textColor = UIColor(colorLiteralRed: 255/255, green: 0, blue: 0, alpha: 1)
                rightOrWrong.text = "Oops! Incorrect answer..."
                rightOrWrong.isHidden = false
                
                // Buttons with the correct answer turn green
                
                for answer in answerButtons {
                    
                    if (answer?.currentTitle == questions[0]["rightAnswer"]) || (answer?.currentTitle == questions[1]["rightAnswer"]) || (answer?.currentTitle == questions[2]["rightAnswer"]) || (answer?.currentTitle == questions[3]["rightAnswer"]) || (answer?.currentTitle == questions[4]["rightAnswer"]) {
                        
                        answer?.backgroundColor = UIColor.green
                    }
                }
            }
        }
    }
    
        
        
        
        

//When nextQuestion button is tapped
    @IBAction func nextQuestion() {
        
        answer1.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 0, blue: 0, alpha: 0.6)
        answer2.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 0, blue: 0, alpha: 0.6)
        answer3.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 0, blue: 0, alpha: 0.6)
        answer4.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 0, blue: 0, alpha: 0.6)
        
        printQuestion()
    }
    
//print new question to the questionLabel
    func printQuestion() {
    randomQuestionPicker.randomQuestion(questionLabel: questionLabel, answer1: answer1, answer2: answer2, answer3: answer3, answer4: answer4)
        proceedQuestions.isHidden = true
        rightOrWrong.isHidden = true
    }
}











