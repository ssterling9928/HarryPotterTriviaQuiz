//
//  ViewController.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 2/29/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    
    override func viewDidLoad() {
        
        quizManager!.quiz.allQuestions.shuffle()
        updateUI()
    }
    
    @IBAction func myUnwindAction(segue: UIStoryboardSegue) {
        // canceled segue from askMenu comes back to this viewcontroller
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "askMenu", sender: nil)
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let isCorrect = quizManager!.checkAnswer(sender)
        
               
        if (isCorrect){
            sender.backgroundColor = UIColor.green
            quizManager!.score += 1
        }
        else {
            sender.backgroundColor = UIColor.red
            
            // turn correct answer green
            let answer = quizManager?.getAnswer()
            
            if (answer == 0){
                buttonOne.backgroundColor = UIColor.green
            }
            if (answer == 1){
                buttonTwo.backgroundColor = UIColor.green
            }
            if (answer == 2){
                buttonThree.backgroundColor = UIColor.green
            }
            if (answer == 3){
                buttonFour.backgroundColor = UIColor.green
            }
            
        }
        
        
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
        quizManager!.UpdateQuestionIndex()
        
        if (quizManager!.isOver == true){
            LoadEndController()
        }

    }
    
    func LoadEndController() {
        
        performSegue(withIdentifier: "end", sender: nil)
    }
    
    @objc func updateUI(){
        
        if (quizManager!.isOver == true){ return }
        
        buttonOne.backgroundColor = UIColor.clear
        buttonTwo.backgroundColor = UIColor.clear
        buttonThree.backgroundColor = UIColor.clear
        buttonFour.backgroundColor = UIColor.clear
        
        score.text = String(quizManager!.GetScore()) + "/20"
        
        progressBar.progress = quizManager!.GetProgress()
            
        questionLabel.text = quizManager!.quiz.chosenQuestions[quizManager!.questionIndex].text
        
        buttonOne.setTitle(quizManager!.quiz.chosenQuestions[quizManager!.questionIndex].possAnswer1, for: UIControl.State.normal)
        
        buttonTwo.setTitle(quizManager!.quiz.chosenQuestions    [quizManager!.questionIndex].possAnswer2, for: UIControl.State.normal)
        
        buttonThree.setTitle(quizManager!.quiz.chosenQuestions[quizManager!.questionIndex].possAnswer3, for: UIControl.State.normal)
        
        buttonFour.setTitle(quizManager!.quiz.chosenQuestions[quizManager!.questionIndex].possAnswer4, for: UIControl.State.normal)
    }
    
    
    
}



