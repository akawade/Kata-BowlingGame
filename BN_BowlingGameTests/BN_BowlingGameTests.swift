    //
    //  BN_BowlingGameTests.swift
    //  BN_BowlingGameTests
    //
    //  Created by Avinash Kawade on 25/11/22.
    //
    
    import XCTest
    @testable import BN_BowlingGame
    
    class BN_BowlingGameTests: XCTestCase {
        let game = BlowingGame()
        override func setUpWithError() throws {
            // Put setup code here. This method is called before the invocation of each test method in the class.
        }
        
        override func tearDownWithError() throws {
            // Put teardown code here. This method is called after the invocation of each test method in the class.
        }
        
        func testGame_AllRollZeroPins()
        {
            roll(num: 0)
            XCTAssertEqual(game.score(), 0)
        }
        
        //    func testGame_SomeRollPinsHit()
        //    {
        //        game.roll(pins:0)
        //        game.roll(pins:1)
        //
        //        game.roll(pins:5)
        //        game.roll(pins:3)
        //
        //        game.roll(pins:2)
        //        game.roll(pins:3)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:0)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:0)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:0)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:0)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:0)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:0)
        //
        //        game.roll(pins:0)
        //        game.roll(pins:5)
        //
        //
        //        let score = game.score()
        //        XCTAssertEqual(score, 19)
        //    }
        
        func testGame_AllRollPinsHitThree()
        {
            roll(num: 2)
            XCTAssertEqual(game.score(), 40)
        }
        
        func testGame_RollHitNineAndZeroPins()
        {
            for _ in 1...10 {
                game.roll(pins:9)
                game.roll(pins:0)
            }
            XCTAssertEqual(game.score(), 90)
        }
        
        func testGame_AnyFrameSpareExceptLastHitPins()
        {
            game.roll(pins:0)
            game.roll(pins:0)
            game.roll(pins:5)
            game.roll(pins:5)
            game.roll(pins:3)
            game.roll(pins:6)
            for _ in 1...7 {
                game.roll(pins:0)
                game.roll(pins:0)
            }
            
            XCTAssertEqual(game.score(), 22)
        }
        
        private func roll(num: Int){
            
            for _ in 1...20 {
                game.roll(pins:num)
            }
        }
        
        func testExample() throws {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct results.
        }
        
        func testPerformanceExample() throws {
            // This is an example of a performance test case.
            self.measure {
                // Put the code you want to measure the time of here.
            }
        }
    }
