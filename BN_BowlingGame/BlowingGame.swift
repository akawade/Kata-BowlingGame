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
    var spareBonus = 0
    var frameScore = 0
    
    func roll(pins: Int) {
        rolls.append(pins)
    }
    
    func score() -> Int {
        
        for i in stride(from: 0, to: rolls.count-1, by: 2) {
            print(i)
       
            if isFrameSpare(rollIndex: i) {
                  // its is spare frame
                    spareBonus += rolls[i + 2]
            }
            frameScore = rolls[i] + rolls[i + 1]
            print("frameScore  == \(frameScore)")
            scoreCount +=  frameScore
            print("scoreCount  == \(scoreCount)")

        }
        scoreCount += spareBonus
        print("Total score  == \(scoreCount)")

        return scoreCount
    }
    
    private func isFrameSpare(rollIndex: Int) -> Bool {
        if rolls.count >= 2 && rolls[rollIndex] + rolls[rollIndex + 1]  == 10 {
            return true
        } else {return false}
    }
}
