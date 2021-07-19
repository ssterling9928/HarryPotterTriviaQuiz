//
//  MainMenuController.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 3/1/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import AVFoundation
import UIKit

var quizManager:QuizManager?
var soundPlayer:SoundPlayer?

class MenuViewController : UIViewController {
    override func viewDidLoad() {
        
        quizManager = QuizManager()
        soundPlayer = SoundPlayer()
        let userDefaults = UserDefaults.standard
        if userDefaults.bool(forKey: "Sound"){
            soundPlayer!.PlaySound()
      }
    }
    
    // controller must implement method due to unwinding of segue
    @IBAction func myUnwindAction(segue: UIStoryboardSegue) {}
    
    let easyText = "Easy"
    let mediumText = "Medium"
    let hardText = "Hard"
    
    
    @IBAction func optionsPressed(_ sender: UIButton) {
        
        // doesn't seem to be needed
        //performSegue(withIdentifier: "options", sender: nil)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
            
        if (sender.titleLabel!.text == easyText){
            
            quizManager!.CreateQuiz(quizDifficulty: .Easy)
        }
        
        if (sender.titleLabel!.text == mediumText){
            
            quizManager!.CreateQuiz(quizDifficulty: .Medium)
        }
        
        if (sender.titleLabel!.text == hardText) {
            
            quizManager!.CreateQuiz(quizDifficulty: .Hard)
        }
    
        LoadQuizController()
    }
    
    func LoadQuizController() {
        performSegue(withIdentifier: "quiz", sender: nil)
    }
    
    
}

    


