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
        
        
        printQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//When nextQuestion button is taped
    @IBAction func nextQuestion() {
        printQuestion()
    }
    
//print new question to the questionLabel
    func printQuestion() {
        questionLabel.text = randomQuestionPicker.randomQuestion()
    }
}

