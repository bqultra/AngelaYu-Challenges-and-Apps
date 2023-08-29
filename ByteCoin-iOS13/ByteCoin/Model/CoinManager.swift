//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    
    func didGetPrice(_ coinManager: CoinManager, bitcoinPrice: Double)
    
    func didGetError(error: Error)
    
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "1CA6026D-B212-4F1C-A0E1-B739CBC6B045"
    
    mutating func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func performRequest(with urlString:String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didGetError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let bitCoinPrice = self.parseJSON(safeData) {
                        self.delegate?.didGetPrice(self, bitcoinPrice: bitCoinPrice)
                    }
                }
            }
            task.resume()
        }
        
    }
    
    
    func parseJSON(_ data: Data) -> Double? {
        
        let decoder = JSONDecoder()
        
        do {
            
            let decodedData = try decoder.decode(CoinData.self, from: data)
            
            let lastPrice = decodedData.rate
            
            return lastPrice
            
        } catch {
            
            return nil
            
        }
    }
}
