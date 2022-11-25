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
        //for i in 0...rolls.count-1 {
        for i in stride(from: 0, to: rolls.count-1, by: 2) {
            print(i)
       
            if rolls.count >= 2 {
                if rolls[i] + rolls[i + 1]  == 10 {
                  // its is spare frame
                    spareBonus += rolls[i + 2]
                }
            }
            frameScore = rolls[i] + rolls[i + 1]
            print("frameScore  == \(frameScore)")
            scoreCount +=  frameScore
            print("scoreCount  == \(scoreCount)")

        }
        scoreCount += spareBonus
        print("Total scoreCount  == \(scoreCount)")

        return scoreCount
    }
}
