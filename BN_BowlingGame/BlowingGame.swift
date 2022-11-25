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
        
        //for i in stride(from: 0, to: rolls.count-1, by: 2) {
        var roll = 0
        for _ in 1...10 {
                //print(i)
            frameScore = rolls[roll] + rolls[roll + 1]
            print("frameScore  == \(frameScore)")
            if isFrameSpare(rollIndex: roll) {
                  // its is spare frame
                spareBonus += rolls[roll + 2]
                roll += 2
            }else {
                roll += 2
            }
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
