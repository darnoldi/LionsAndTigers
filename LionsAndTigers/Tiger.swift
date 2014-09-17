//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Dave Arnoldi on 2014/09/15.
//  Copyright (c) 2014 Dave Arnoldi. All rights reserved.
//

import Foundation
import UIKit


struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff()
    {
        println("Tiger: \(name) says chuff chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes:Int)
    {
        for var chuff=0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes:Int, isLoud:Bool)
    {
        for var chuffTimes=1; chuffTimes <= numberOfTimes; ++chuffTimes {
            if isLoud {
                chuff()
                
            }
            else {
                println("Tiger: \(name) says purr")
            }
        }

    }
    
    func ageInTigerYearsFromAge (regularAge:Int) ->Int
    {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() ->String
    {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact = ""
        if randomNumber == 0 {
            randomFact = "The tiger is the biggest species in the cat family."
        }
        else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3m"
        }
        else if randomNumber == 2 {
            randomFact = "Group of tigers is known as an ambush or streak."
        }
       return randomFact

    }
    
}