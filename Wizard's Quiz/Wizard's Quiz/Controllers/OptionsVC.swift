//
//  OptionsVC.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 4/6/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//


import UIKit

class OptionsVC: UIViewController {
    
    override func viewDidLoad() {
        SetRoundedCorners()
        let userDefaults = UserDefaults.standard
        if (userDefaults.bool(forKey: soundKey)) {
            musicSwitch.isOn = true
        } else {
            musicSwitch.isOn = false
        }
        
    }

    @IBOutlet weak var musicSwitch: UISwitch!
    
    let soundKey = "Sound"
    var subView: UIView?
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        ToggleSwitch(switchControl: sender)
    }
    
    func ToggleSwitch(switchControl: UISwitch) {
        if switchControl.isOn == true {
            soundPlayer!.PlaySound()
            let userDefaults = UserDefaults.standard
            userDefaults.set(musicSwitch.isOn, forKey: soundKey)
        }
        else {
            soundPlayer!.StopSound()
            let userDefaults = UserDefaults.standard
            userDefaults.set(musicSwitch.isOn, forKey: soundKey)
            
        }
    }
    
    func SetRoundedCorners() {
        subView = view.subviews.first
        subView?.layer.cornerRadius = 15
        subView?.layer.masksToBounds = true
    }
    
}
