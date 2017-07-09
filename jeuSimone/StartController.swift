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
        let savedScore = SingletonShared.sigletonSharedInstance.savedHighscore.object(forKey: "score")!
        highscoreLabel.text = "HIGHSCORE : \(String(describing: savedScore))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func resetHighscore(_ sender: UIButton) {
        highscoreLabel.text = "HIGHSCORE : 0"
        SingletonShared.sigletonSharedInstance.resetHighscore()
    }
    
    
}


