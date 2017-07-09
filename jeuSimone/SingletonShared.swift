//
//  SimoneBrain.swift
//  jeuSimone
//
//  Created by Pedro Teixeira on 03/07/17.
//  Copyright © 2017 Pedro Teixeira. All rights reserved.
//

import UIKit

class SingletonShared {

    var highscore: String!
    var scoreForWrongInterface: String!
    var savedHighscore = UserDefaults.standard
    static let sigletonSharedInstance = SingletonShared()
    
    
    init() {
        //savedHighscore.removeObject(forKey: "score")
        manageScore()
    }
    
    func manageScore() {
        
        if let hs = savedHighscore.object(forKey: "score") {
            highscore = String(describing: hs)
        } else {
            savedHighscore.setValue("0", forKey: "score")
        }
    }
    
    func saveScore(_ aScore: String) {
        let a = aScore
        let b = highscore
        
        if a > b! {
            savedHighscore.setValue(aScore, forKey: "score")
            highscore = a
        }
    }
}

