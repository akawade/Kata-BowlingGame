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
        
        // 10 pairs of 9 and miss
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
        
        func testGame_LastFrameSpareHitPins()
        {
            for _ in 1...3 {
                game.roll(pins:0)
                game.roll(pins:0)
            }
            game.roll(pins:1)
            game.roll(pins:2) //3
            
            game.roll(pins:3)
            game.roll(pins:4)//7
            
            game.roll(pins:1)
            game.roll(pins:2)//3
            
            game.roll(pins:3)
            game.roll(pins:4)//7
            
            game.roll(pins:3)
            game.roll(pins:4)//7
            
            game.roll(pins:6)
            game.roll(pins:4) //12
            
            game.roll(pins:2)
            game.roll(pins:8) //18
            game.roll(pins:8)
            XCTAssertEqual(game.score(), 57)
        }
        
        //10 pairs of 5 and spare, with a final 5
        func testGame_AllFiveRollsHitPins()
        {
            for _ in 1...9 {
                game.roll(pins:5)
                game.roll(pins:5)
            }
            game.roll(pins:5)
            game.roll(pins:5) //15
            game.roll(pins:5)
           
            XCTAssertEqual(game.score(), 150)
        }
        
//        func testGame_AllStrikeRollsHitPins()
//        {
////            game.roll(pins:0)
////            game.roll(pins:0)
//            for _ in 1...12 {
//                game.roll(pins:10)
//            }
////            game.roll(pins:10)
////            game.roll(pins:10)
//            //game.roll(pins:10)
//            XCTAssertEqual(game.score(), 300)
//        }
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
