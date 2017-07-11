//
//  SingletonShared.swift
//  SoaresD_Simone
//
//  Created by eleves on 2017-07-04.
//  Copyright © 2017 Diana. All rights reserved.
//

import UIKit

class SingletonShared {
    
    var highscore: String!
    var scoreForWrongInterface: String!
    var savedHighScore = UserDefaults.standard
    static let singletonSharedInstance = SingletonShared()
    
    init(){
        //reinitialize le high score
        //savedHighScore.removeObject(forKey: "score")
        manageScore()
    }
    
    func manageScore() {
        if let hs = savedHighScore.object(forKey: "score"){
            highscore = String(describing: hs)
        }
        else{
            savedHighScore.setValue("0", forKey: "score")
        }
    }
    
    func saveScore(_ aScore: String) {
        let a = aScore
        let b = highscore
        if a > b! {
            savedHighScore.setValue(aScore, forKey: "score")
            highscore = a
        }
    }
    
}
