//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Dave Arnoldi on 2014/09/15.
//  Copyright (c) 2014 Dave Arnoldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var breedLabel: UILabel!
    
    @IBOutlet weak var randomFact: UILabel!
    
    var myTigers:[Tiger] = []
    var currentIndex = 0
    var lions:[Lion] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal Tiger"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        // myTiger.chuff()
        //myTiger.chuffANumberOfTimes(3)
        //myTiger.chuffANumberOfTimes(3, isLoud: false)
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        secondTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        //secondTiger.chuffANumberOfTimes(2)
        
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        thirdTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        
        var fouthTiger = Tiger()
        fouthTiger.name = "Spar"
        fouthTiger.breed = "Siberian Tiger"
        fouthTiger.age = 5
        fouthTiger.image = UIImage(named: "SiberianTiger.jpg")
        fouthTiger.age = fouthTiger.ageInTigerYearsFromAge(fouthTiger.age)
        
        
        myTigers += [myTiger, secondTiger, thirdTiger, fouthTiger]
        
        myImageView.image = myTigers[0].image
        nameLabel.text = myTigers[0].name
        ageLabel.text = "\(myTigers[0].age)"
        breedLabel.text = myTigers[0].breed
        randomFact.text = myTigers[0].randomFact()

        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lion.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Shecat"
        lioness.subspecies = "Barbary"
        
        lions += [lion,lioness]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem)
    {
        var randomIndex:Int
        
        do {
        randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        }
        while currentIndex == randomIndex
        
        let tiger = myTigers[randomIndex]
        currentIndex = randomIndex
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
                self.randomFact.text = tiger.randomFact()
            }, completion: { (finished: Bool) -> () in
                
        })
    }
}

