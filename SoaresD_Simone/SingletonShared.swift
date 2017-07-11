//
//  SingletonShared.swift
//  SoaresD_Simone
//  Created by eleves on 2017-07-04.
//  Copyright © 2017 Diana. All rights reserved.
//
//------------------------------
import UIKit
//------------------------------

class SingletonShared {
    //------------------------------
   
    var scoreForWrongInterface: String!
    var savedHighScore = UserDefaults.standard
    static let singletonSharedInstance = SingletonShared()
    //------------------------------
    init(){
        saveDefaultIfNeeded()
    }
    //------------------------------
    func saveDefaultIfNeeded() {
        if savedHighScore.object(forKey: "score") == nil {
            savedHighScore.setValue("0", forKey: "score")
        }
    }
    //------------------------------
    func saveScore(_ aScore: String) {
        let a = Int(aScore)
        let b = savedHighScore.object(forKey: "score") as? String
        let c = Int(b!)
        if a! > c! {
            savedHighScore.setValue(aScore, forKey: "score")
        }
    }
    //------------------------------
    func resetHighScore() {
        savedHighScore.removeObject(forKey: "score")
        saveDefaultIfNeeded()
        
    }
    //------------------------------
    
}
