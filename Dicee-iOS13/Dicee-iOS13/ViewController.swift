//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImgView1: UIImageView!
    
    @IBOutlet weak var diceImgView2: UIImageView!
    
    let diceImages = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
        ]
    

    @IBAction func rollButton(_ sender: UIButton) {
        
        diceImgView1.image = diceImages.randomElement()!
        diceImgView2.image = diceImages[Int.random(in: 0...5)]
        
    }
    
}

