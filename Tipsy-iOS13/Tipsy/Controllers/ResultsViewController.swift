//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Szymek on 28/07/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipPercentage = 0
    var personMoney = 0.0
    var people = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format:"%.2f", personMoney)
        settingsLabel.text = "Split between \(people) people, with \(tipPercentage)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
