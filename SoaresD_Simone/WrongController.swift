//
//  ViewController.swift
//  SoaresD_Simone
//
//  Created by eleves on 2017-06-12.
//  Copyright © 2017 Diana. All rights reserved.
//

import UIKit

class WrongController: UIViewController {
    //------------------------------
    @IBOutlet weak var scoreLabel: UILabel!
    //------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = SingletonShared.singletonSharedInstance.scoreForWrongInterface
    }
    //-----------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //------------------------------
}
