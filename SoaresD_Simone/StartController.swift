//
//  ViewController.swift
//  SoaresD_Simone
//  Created by eleves on 2017-06-12.
//  Copyright © 2017 Diana. All rights reserved.
//
//------------------------------
import UIKit
//------------------------------
class StartController: UIViewController {
    //------------------------------
    @IBOutlet weak var highScoreField: UILabel!
    //------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedScore = SingletonShared.singletonSharedInstance.savedHighScore.object(forKey: "score")
        highScoreField.text = "HIGHSCORE : \(String(describing: savedScore!))"
      
    }
    //------------------------------
    @IBAction func goToWebPage(_ sender: UIButton) {
        if let url = NSURL(string: "http://www.mariogeneau.com"){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    //------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //------------------------------
    @IBAction func resetHighscore(_ sender: UIButton) {
        highScoreField.text = "HIGHSCORE : 0"
        SingletonShared.singletonSharedInstance.resetHighScore()
    }
    //------------------------------
    
}

