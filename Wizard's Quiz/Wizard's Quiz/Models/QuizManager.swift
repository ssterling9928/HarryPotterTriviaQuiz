//
//  QuizInfo.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 2/29/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import Foundation
import UIKit

class QuizManager {
    
    var score = 0
    var questionIndex = 0
    var quiz:Quiz!
    var difficulty:QuizDifficulty!
    var isOver = false
    
    func UpdateQuestionIndex() {
        
        if(questionIndex < quiz.chosenQuestions.count - 1){
            questionIndex += 1
        }
        else{
            isOver = true
            questionIndex = 0
        }
        
    }
    
    
    func checkAnswer(_ userAnswer: UIButton) -> Bool {
        
        let answer = quiz.chosenQuestions[questionIndex].answerIndex
        let isCorrect = Int(userAnswer.accessibilityIdentifier!) == answer
        
        return isCorrect
        
    }
    
    func getAnswer() -> Int {
        
        return quiz.chosenQuestions[questionIndex].answerIndex
    }
    
    func GetProgress() -> Float {
        let progress = Float(questionIndex) / Float(quiz.chosenQuestions.count)
        return progress
    }
    
    func GetScore() -> Int {
        return score
    }
    
    func CreateQuiz(quizDifficulty : QuizDifficulty){
        quiz = Quiz(quizDifficulty: quizDifficulty)
        difficulty = quizDifficulty
    }

}

