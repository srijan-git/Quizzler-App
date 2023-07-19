//
//  ViewController.swift
//  Quizzler-App
//
//  Created by Srijan Kumar Khan on 18/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLable:UILabel!
    
    @IBOutlet weak var questionLable: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain=QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer=sender.currentTitle!
        let userGotItRight=quizBrain.checkAnswer(userAnswer)
        if userGotItRight{
            sender.backgroundColor=UIColor.green
        }else{
            sender.backgroundColor=UIColor.red
        }
        
        quizBrain.nextQuestion()
        
       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
  
    
    @objc func updateUI(){
        questionLable.text=quizBrain.getQuestionText()
        progressBar.progress=quizBrain.getProgress()
        scoreLable.text="Score: \(quizBrain.getScore())"
        trueButton.backgroundColor=UIColor.clear
        falseButton.backgroundColor=UIColor.clear
    }
}

