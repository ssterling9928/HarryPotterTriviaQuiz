//
//  AskMenuViewController.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 4/5/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import UIKit

class AskMenuViewController: UIViewController {
    
    @IBAction func myUnwindAction(segue: UIStoryboardSegue) {
    
    }
    
    var subView: UIView?
    
    override func viewDidLoad() {
        
        SetRoundedCorners()
        
    }
    
    @IBAction func yesPressed(_ sender:
        UIButton) {
        performSegue(withIdentifier: "yesPressed", sender: nil)
    }
    @IBAction func noPressed(_ sender: UIButton) {
        // unwind the segue
    }
    func SetRoundedCorners() {
        subView = view.subviews.first
        subView?.layer.cornerRadius = 15
        subView?.layer.masksToBounds = true
    }
}
