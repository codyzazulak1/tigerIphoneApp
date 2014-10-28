//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Cody Zazulak on 2014-10-21.
//  Copyright (c) 2014 Cody Zazulak. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes(numberOfTimes:Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffNumberOfTimes(numberOfTimes:Int, isLoud:Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            } else {
                println("Tiger: Purr Purr")
            }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge:Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(4)))
        var randomFact:String
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the largest member of all cats"
        } else if randomNumber == 1 {
            randomFact = "Three of nine subspecies are extinct"
        } else if randomNumber == 2 {
            randomFact = "3,000-4,500 exist in the wild"
        } else {
            randomFact = "Groups of Tigers are called 'Streaks'"
        }
        
        return randomFact
    }
}