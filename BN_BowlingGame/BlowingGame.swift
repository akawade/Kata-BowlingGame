//
//  BlowingGame.swift
//  BN_BowlingGame
//
//  Created by Avinash Kawade on 25/11/22.
//

import Foundation

class BlowingGame {
    
    var rolls = [Int]()
    var scoreCount = 0
    
    func roll(pins: Int) {
        rolls.append(pins)
    }
    
    func score() -> Int {
        for i in 0...rolls.count-1 {
            scoreCount += rolls[i]
        }
        return scoreCount
    }
}
