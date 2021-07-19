//
//  EndViewController.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 3/7/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import Foundation
import UIKit

class EndViewController: UIViewController {
    @IBOutlet weak var scoreText: UILabel!
    @IBOutlet weak var messageText: UILabel!
    
    override func viewDidLoad() {
        DisplayMessage()
        scoreText.text = "Score:  " + String(quizManager!.GetScore())
    }
    @IBAction func PlayAgainButtonPressed(_ sender: UIButton) {
        LoadStartController()
    }
    
    func LoadStartController() {
        
        performSegue(withIdentifier: "start", sender: nil)
    }
    
    func DisplayMessage() {
        
        if (quizManager!.GetScore() == 20 && quizManager!.difficulty == QuizDifficulty.Hard){
            messageText.text = "WELL WELL WELL!!  YOU CHEATED!!  Just Kidding!  You are one of the biggest Harry Potter fans there is!  Congratulations, you have completed mastered The Wizard's Quiz!!  Thanks for playing!"
        }
        
        if (quizManager!.GetScore() >= 17 && quizManager!.GetScore() < 20 && quizManager!.difficulty == QuizDifficulty.Hard) {
            messageText.text = "Congratulations!!  You obviously know your Harry Potter!  I would say that you are a Hardcore fan!  You answered almost all the hardest questions correctly!  Keep going to see if you can master the entire The Wizard's Quiz!"
            return
        }
        
        if (quizManager!.GetScore() >= 13 && quizManager!.GetScore() < 17 && quizManager!.difficulty == QuizDifficulty.Hard){
            messageText.text = "Pretty Great!!  You're on the Hard Difficulty so you did pretty well.  If you really want to master it, keep trying!!"
            return
        }
        
        if (quizManager!.GetScore() >= 7 && quizManager!.GetScore() < 13 && quizManager!.difficulty == QuizDifficulty.Hard){
            messageText.text = "Not too bad.  After all this is the Hard Difficulty.  Theres room for improvement though.  If you really want to master it, keep trying!!"
            return
        }
        
       if (quizManager!.GetScore() < 7 && quizManager!.difficulty == QuizDifficulty.Hard){
            messageText.text = "Not so great..  Maybe you should try Medium again.  If you have mastered it already, I would say that your not as big of a fan as you think you are."
            return
        }
        
        if (quizManager!.GetScore() == 20 && quizManager!.difficulty == QuizDifficulty.Medium){
            messageText.text = "Congratulations!!  You have mastered the Medium Difficulty.  You really are a true fan!  Try and see how you can do on the Hard Difficulty!"
        }
        
        if (quizManager!.GetScore() >= 17 && quizManager!.GetScore() < 20 && quizManager!.difficulty == QuizDifficulty.Medium){
                messageText.text = "Nice!!  You almost got all average questions right.  I would consider you fan of Harry Potter!  Try again and see if you can master the Medium Difficulty."
            return
        }
        
        if (quizManager!.GetScore() >= 13 && quizManager!.GetScore() < 17 && quizManager!.difficulty == QuizDifficulty.Medium){
            messageText.text = "Pretty Good!! You are right around average.  You seem to know Harry Potter pretty well.  I dont know about a big fan though!! Keep trying and see how far you can go!!"
            return
        }
        
        if (quizManager!.GetScore() >= 7 && quizManager!.GetScore() < 13 && quizManager!.difficulty == QuizDifficulty.Medium){
            messageText.text = "I think you need to study up a bit on Harry Potter.  You may want to try the Easy Difficulty and see how you do there!!"
            return
        }
        
        if (quizManager!.GetScore() < 7 && quizManager!.difficulty == QuizDifficulty.Medium){
            messageText.text = "You didn't do so well.  Maybe you should try to answer the easy questions first.  You may not know as much as you think you do.  ??"
            return
        }
        
        if (quizManager!.GetScore() == 20 && quizManager!.difficulty == QuizDifficulty.Easy){
            messageText.text = "Congratulations!!  You have mastered the Easy Difficulty and answered all the questions correct.  But can you progress to the Medium Difficulty?"
        }
        
        if (quizManager!.GetScore() >= 17 && quizManager!.GetScore() < 19 && quizManager!.difficulty == QuizDifficulty.Easy){
            messageText.text = "Great!  You almost got all of them right!  Try playing again to see if you can master the Easy Difficulty!"
            return
        }
        
        if (quizManager!.GetScore() >= 13 && quizManager!.GetScore() < 17 && quizManager!.difficulty == QuizDifficulty.Easy){
            messageText.text = "Good Job!  You did pretty well, but there's room for improvement.  Keep trying, and maybe watch the movies again, then come play againn!!"
            return
        }
        
        if (quizManager!.GetScore() >= 7 && quizManager!.GetScore() < 13 && quizManager!.difficulty == QuizDifficulty.Easy){
            messageText.text = "Well you managed to get some right.  Great start, but you should probably brush up on some Harry Potter.  Then make sure to come back and play again!"
            return
        }
        
        if (quizManager!.GetScore() < 7 && quizManager!.difficulty == QuizDifficulty.Easy){
                messageText.text = "Umm.. Did you even watch the movies or read the books??  How about go do that and then come play again!!"
            return
        }
        
        // debug
        print("Score did not match with with messages")
        
    }
        
}
