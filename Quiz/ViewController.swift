//
//  ViewController.swift
//  Quiz
//
//  Created by Tara Jue on 1/27/19.
//  Copyright © 2019 Tara Jue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What does plié mean?",
        "What does frappé mean?",
        "What does battement mean?",
        "What does jeté mean?",
        "What does piqué mean?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Bend of the knees",
        "To strike",
        "To beat",
        "To throw",
        "To prick"
    ]
    var currentQuestionIndex: Int = 0
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer (_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
}

