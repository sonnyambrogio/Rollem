//
//  DiceBrains.swift
//  Rollem
//
//  Created by Santino Ambrogio on 2016-03-27.
//  Copyright © 2016 Santino Ambrogio. All rights reserved.
//


/*
 This seems to be pretty repetitive.
 Needs a quick way to populate the array and return a random number..
 Too much typin the same code over and over.. But its working for now
 */
import Foundation



struct SixSidedBrain {
    let rollableNumbers = [1, 2, 3, 4, 5, 6]
    
    func roll() -> Int {
        // generate a randomNumber from the rollableNumbers Array
        let randomIndex = Int(arc4random_uniform(UInt32(rollableNumbers.count)))
        // return the random number + 1 to account for computers starting to count at Zero.
        return randomIndex + 1
    }
}

struct FourSidedBrain {
    let rollableNumbers = [1, 2, 3, 4]
    
    func roll() -> Int {
        // generate a randomNumber from the rollableNumbers Array
        let randomIndex = Int(arc4random_uniform(UInt32(rollableNumbers.count)))
        // return the random number + 1 to account for computers starting to count at Zero.
        return randomIndex + 1
    }
}

struct EightSidedBrain  {
    let rollableNumbers = [1, 2, 3, 4, 5, 6, 7, 8]
    
    func roll() -> Int {
        // generate a randomNumber from the rollableNumbers Array
        let randomIndex = Int(arc4random_uniform(UInt32(rollableNumbers.count)))
        // return the random number + 1 to account for computers starting to count at Zero.
        return randomIndex + 1
    }
}

struct TenSidedBrain  {
    let rollableNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    func roll() -> Int {
        // generate a randomNumber from the rollableNumbers Array
        let randomIndex = Int(arc4random_uniform(UInt32(rollableNumbers.count)))
        // return the random number + 1 to account for computers starting to count at Zero.
        return randomIndex + 1
    }
}

struct TwelveSidedBrain  {
    let rollableNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    
    func roll() -> Int {
        // generate a randomNumber from the rollableNumbers Array
        let randomIndex = Int(arc4random_uniform(UInt32(rollableNumbers.count)))
        // return the random number + 1 to account for computers starting to count at Zero.
        return randomIndex + 1
    }
}

struct TwentySidedBrain  {
    let rollableNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    
    func roll() -> Int {
        // generate a randomNumber from the rollableNumbers Array
        let randomIndex = Int(arc4random_uniform(UInt32(rollableNumbers.count)))
        // return the random number + 1 to account for computers starting to count at Zero.
        return randomIndex + 1
    }
}























