//
//  SoundPlayer.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 4/6/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import AVFoundation

struct SoundPlayer {
    
    var player = AVAudioPlayer()
    let sound = Bundle.main.url(forResource: "backgroundMusic", withExtension: "wav")
    
    init() {
        do {
            player = try AVAudioPlayer.init(contentsOf: sound!)
            player.prepareToPlay()
        } catch {
            print("Failed to inialize Sound Player")
        }
    }
    
    func PlaySound() {
        player.play()
    }
    
    func StopSound() {
        player.stop()
    }
    
}
