//
//  SimoneBrain.swift
//  SoaresD_Simone
//
//  Created by eleves on 2017-07-03.
//  Copyright © 2017 Diana. All rights reserved.
//

import Foundation
import UIKit

class SimoneBrain {
    
    //*********************************
    var colorTracker: Int!
    var userTurnToPlay: Bool!
    var scoreKeeperCounter: Int!
    var theScoreKeeper = ""
    var randomButtonChooser: UIButton
    
    //*********************************
    //Fonction that gets a random number
    func getRandomNumber( from f: Int, to t: Int) -> Int {
        let from = UInt32(f)
        let to = UInt32 (t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int(randomNumber)
    }
    //*********************************
    //Fonction to start the game and initialize "colorTracker" to 0
    func startGame(_ arrOfRandomButtons: [UIButton]) {
        //--------------
        colorTracker = 0
        //--------------
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false, {_ in
            self.buttonAlphaManager(arrOfRandomButtons)
        //--------------
        })
    
    }
    //*********************************
    //Fonction
    func buttonAlphaManager(_ arrOfRandomButtons: [UIButton]) {
      //--------------
        if colorTracker < arrOfRandomButtons.count{
            //--------------
            userTurnToPlay = false
            scoreKeeperCounter = 0
            scoreKeeper = ""
            randomButtonChooser = arrOfRandomButtons[colorTracker]
            colorTracker! += 1
            //--------------
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, {_ in
                self.resetAlphaForButtons(arrOfRandomButtons)
            }
        }
        else {
            //--------------
            userTurnToPlay = true
        }
        
    }
    
    //*********************************
    func resetAlphaForButtons(_ arrOfRandomButtons: [UIButton]){
        randomButtonChooser.alpha = 1.0
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, {_ in
            self.buttonAlphaForButtons(arrOfRandomButtons)

            
    }
    
    //*********************************
    var scoreKeeper: String? {
        get {
            return theScoreKeeper
        }
        set{
            theScoreKeeper = newValue!
        }
        
    }
    
}
