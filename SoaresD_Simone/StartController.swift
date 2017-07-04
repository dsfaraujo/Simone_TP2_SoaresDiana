//
//  ViewController.swift
//  SoaresD_Simone
//
//  Created by eleves on 2017-06-12.
//  Copyright © 2017 Diana. All rights reserved.
//

import UIKit

class StartController: UIViewController {
    
    
    @IBOutlet weak var highScoreField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highScoreField.text = "HIGH SCORE : \(SingletonShared.singletonSharedInstance.highscore)"
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

