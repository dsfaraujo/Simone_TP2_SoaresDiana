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
    //------------------------------
    var gameColors: [UIButton]!
    var colorIndex: Int!
    var arrRandomColors: [UIButton] = []
    var userTurnToPlay: Bool!
    var scoreTracker = ""
    var colorToHighlight: UIButton!
    var arrCopyOfRandomColorsToCompare: [UIButton]!
    var scoreKeeperCounter: Int!
    //------------------------------
    init(gameColors: [UIButton]) {
        self.gameColors = gameColors
    }
    //------------------------------
    //Fonction that gets a random number
    func getRandomNumber(from f: Int, to t: Int) -> Int {
        let from = UInt32(f)
        let to = UInt32 (t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int(randomNumber)
    }
    //------------------------------
    //Fonction to start the game and initialize "colorTracker" to 0
    func startGame() {
        
        colorIndex = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false){_ in
            self.gameColorsToHighlightManager()
        }
    }
    //------------------------------
    func gameColorsToHighlightManager() {
        //--------------
        if colorIndex < arrRandomColors.count{
            //--------------
            userTurnToPlay = false
            scoreKeeper = ""
            colorToHighlight = arrRandomColors[colorIndex]
            colorToHighlight.alpha = 0.2
            colorIndex! += 1
            scoreKeeperCounter = 0
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){_ in
                self.resetAlphaForColors()
            }
        }
        else {
            userTurnToPlay = true
        }
    }
    //------------------------------
    func resetAlphaForColors(){
        colorToHighlight.alpha = 1.0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false){_ in
            self.gameColorsToHighlightManager()
        }
    }
    //------------------------------
    var scoreKeeper: String? {
        get {
            return scoreTracker
        }
        set{
            scoreTracker = newValue!
        }
    }
    //------------------------------
    func verification(_ aButton: UIButton) -> Bool{
        if arrCopyOfRandomColorsToCompare[0] == aButton {
            arrCopyOfRandomColorsToCompare.removeFirst()
            if arrCopyOfRandomColorsToCompare.count == 0{
                colorIndex = 0
                addRandomColorToArray()
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false){_ in
                    self.gameColorsToHighlightManager()
                }
            }
            return true
        }
        else{
            return false
        }
    }
    //------------------------------
        func addRandomColorToArray() {
            let randomIndex = getRandomNumber(from: 0, to: gameColors.count - 1)
            arrRandomColors.append((gameColors[randomIndex]))
    }
    //------------------------------
    func loadArrayForComparison() {
        arrCopyOfRandomColorsToCompare = arrRandomColors
    }
    //------------------------------
}





