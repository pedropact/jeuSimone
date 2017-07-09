//
//  ViewController.swift
//  jeuSimone
//
//  Created by Pedro Teixeira on 03/07/17.
//  Copyright © 2017 Pedro Teixeira. All rights reserved.
//

import UIKit

class StartController: UIViewController {

    @IBOutlet weak var highscoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        SingletonShared.sigletonSharedInstance.manageScore()
        highscoreLabel.text = "HIGHSCORE : \(SingletonShared.sigletonSharedInstance.highscore!)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}


