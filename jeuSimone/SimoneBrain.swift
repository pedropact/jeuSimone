//
//  SimoneBrain.swift
//  jeuSimone
//
//  Created by Pedro Teixeira on 03/07/17.
//  Copyright © 2017 Pedro Teixeira. All rights reserved.
//

import Foundation
import UIKit

class SimoneBrain {
    
    //------------------
    
    var gameColors: [UIButton]!
    var colorIndex: Int!
    var arrRandomColors: [UIButton] = []
    var userTurnToPlay: Bool!
    var scoreTracker = ""
    var colorToHighlight: UIButton!
    var arrCopyOfRandomColorsToCompare: [UIButton]!
    var scoreKeeperCounter: Int!
    
    //------------------
    
    init(gameColors: [UIButton]) {
        self.gameColors = gameColors
    }
    
    //------------------

    
    func getRandomNumber(from f: Int, to t: Int) -> Int {
        let from = UInt32(f)
        let to = UInt32(t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int(randomNumber)
    }
    
    //------------------
    
    func starGame(_ arrOfRandomButtons: [UIButton]) {
        colorTracker = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false){_ in
            self.buttonAlphaManager(arrOfRandomButtons)
        }
    }
    
    //------------------
    
    func buttonAlphaManager (_ arrOfRandomButtons: [UIButton]) {
        
        if colorTracker < arrOfRandomButtons.count {
            userTurnToPlay = false
            scoreKeeperCounter = 0
            scoreKeeper = ""
            randomButtonChooser = arrOfRandomButtons[colorTracker]
            randomButtonChooser.alpha = 0.2
            colorTracker! += 1
            
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){_ in
                self.resetAlphaForButtons(arrOfRandomButtons)
            }
        } else {
            userTurnToPlay = true
        }
    }
    
    //------------------
    
    func resetAlphaForButtons (_ arrOfRandomButtons: [UIButton]) {
        randomButtonChooser.alpha = 1.0
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){_ in
            self.buttonAlphaManager(arrOfRandomButtons)
        }
    }

    //------------------
    
    var scoreKeeper: String? {
        
        get {
            return theScoreKeeper
        }
        set {
            theScoreKeeper = newValue!
        }
        
    }
    
    
    
}

