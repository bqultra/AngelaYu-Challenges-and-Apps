//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coinManager.delegate = self
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
    }


}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    //Number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let pickedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: pickedCurrency)
        self.currencyLabel.text = pickedCurrency
    }
    
}

extension ViewController: CoinManagerDelegate {
    func didGetPrice(_ coinManager: CoinManager, bitcoinPrice: Double) {
        
        DispatchQueue.main.async {
            self.bitcoinLabel.text = String(format: "%.2f", bitcoinPrice)
        }
        
    }
    
    func didGetError(error: Error) {
        print(error)
    }
    
    
}
