//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    var eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var totalTime = 0,
        secondsPassed = 0

    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        progressBar.progress = 0
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        let hardness = sender.currentTitle!
        
        mainLabel.text = hardness
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0
        
        secondsPassed = 0
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsPassed < self.totalTime {
                
                self.secondsPassed += 1
                
                let barPercentage = Float(self.secondsPassed) / Float(self.totalTime)
                
                self.progressBar.progress = barPercentage
                
            } else {
                
                    Timer.invalidate()
                    self.mainLabel.text = "Done"
                    self.playSound(soundName: "alarm_sound")
                }
            }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}
