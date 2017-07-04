//
//  SimoneBrain.swift
//  jeuSimone
//
//  Created by Pedro Teixeira on 03/07/17.
//  Copyright © 2017 Pedro Teixeira. All rights reserved.
//

import Foundation

class SimoneBrain {

    func getRandomNumber(from f: Int, to t: Int) -> Int {
        let from = UInt32(f)
        let to = UInt32(t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int(randomNumber)
    }

}

