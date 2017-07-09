//
//  SimoneBrain.swift
//  jeuSimone
//
//  Created by Pedro Teixeira on 03/07/17.
//  Copyright © 2017 Pedro Teixeira. All rights reserved.
//

import UIKit

class SingletonShared {

    var scoreForWrongInterface: String!
    var savedHighscore = UserDefaults.standard
    static let sigletonSharedInstance = SingletonShared()
    
    
    init() {
        //savedHighscore.removeObject(forKey: "score")
        saveDefaultIfNeeded()
    }
    
    func saveDefaultIfNeeded() {
        if savedHighscore.object(forKey: "score") == nil {
            savedHighscore.setValue("0", forKey: "score")
        }
    }
    
    func saveScore(_ aScore: String) {
        let a = Int(aScore)
        let b = savedHighscore.object(forKey: "score") as? String
        let c = Int(b!)
        
        if a! > c! {
            savedHighscore.setValue(aScore, forKey: "score")
            
        }
    }
    
    func resetHighscore() {
        savedHighscore.removeObject(forKey: "score")
        saveDefaultIfNeeded()
    }
    
    
}

