//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dieLabel1: UILabel!
    @IBOutlet weak var dieLabel2: UILabel!
    @IBOutlet weak var dieLabel3: UILabel!
    @IBOutlet weak var dieLabel4: UILabel!
    @IBOutlet weak var dieLabel5: UILabel!
    @IBOutlet weak var dieLabel6: UILabel!
    @IBOutlet weak var dieLabel7: UILabel!
    
    @IBOutlet weak var dieScoreLabel1: UILabel!
    @IBOutlet weak var dieScoreLabel2: UILabel!
    @IBOutlet weak var dieScoreLabel3: UILabel!
    @IBOutlet weak var dieScoreLabel4: UILabel!
    @IBOutlet weak var dieScoreLabel5: UILabel!
    @IBOutlet weak var dieScoreLabel6: UILabel!
    
    @IBOutlet weak var dieButton: UIButton!
    var buttonTapped:Int = 0
    // Declared this buttonTapped property to be referred to in the dieButtonTapped IBAction

    override func viewDidLoad() {
        super.viewDidLoad()
        allLabelsHidden()
        // Had to call this helper function to ensure that the game starts with no labels shown on the screen.
    }
    
    @IBAction func dieButtonTapped(sender: AnyObject) {
   
        dieLabelsHidden()
        buttonTapped += 1
        
        let randomNumber = randomDiceRoll()
    
        switch randomNumber {
        case 1:
            dieRollEqualsOne()
        case 2:
            dieRollEqualsTwo()
        case 3:
            dieRollEqualsThree()
        case 4:
            dieRollEqualsFour()
        case 5:
            dieRollEqualsFive()
        case 6:
            dieRollEqualsSix()
        default:
            ""
        }
    
        switch buttonTapped {
        case 1:
            dieScoreLabel1.hidden = false
            dieScoreLabel1.text = String(randomNumber)
        case 2:
            dieScoreLabel2.hidden = false
            dieScoreLabel2.text = String(randomNumber)
        case 3:
            dieScoreLabel3.hidden = false
            dieScoreLabel3.text = String(randomNumber)
        case 4:
            dieScoreLabel4.hidden = false
            dieScoreLabel4.text = String(randomNumber)
        case 5:
            dieScoreLabel5.hidden = false
            dieScoreLabel5.text = String(randomNumber)
        case 6:
            dieScoreLabel6.hidden = false
            dieScoreLabel6.text = String(randomNumber)
        default:
            ""
        }
    
    
    }
    
    func dieRollEqualsOne() {
        // Created these helper functions to easily call them when needed. The following 9 functions were all created to be called above & improve general legibility of my code.
        dieLabel1.hidden = false
    }
    
    func dieRollEqualsTwo() {
        dieLabel2.hidden = false
        dieLabel3.hidden = false
    }
    
    func dieRollEqualsThree() {
        dieLabel1.hidden = false
        dieLabel2.hidden = false
        dieLabel3.hidden = false
    }
    
    func dieRollEqualsFour() {
        dieLabel2.hidden = false
        dieLabel3.hidden = false
        dieLabel4.hidden = false
        dieLabel5.hidden = false
    }
    
    func dieRollEqualsFive() {
        dieLabel1.hidden = false
        dieLabel2.hidden = false
        dieLabel3.hidden = false
        dieLabel4.hidden = false
        dieLabel5.hidden = false
    }
    
    func dieRollEqualsSix() {
        dieLabel2.hidden = false
        dieLabel3.hidden = false
        dieLabel4.hidden = false
        dieLabel5.hidden = false
        dieLabel6.hidden = false
        dieLabel7.hidden = false
    }
    
    func dieLabelsHidden() {
        dieLabel1.hidden = true
        dieLabel2.hidden = true
        dieLabel3.hidden = true
        dieLabel4.hidden = true
        dieLabel5.hidden = true
        dieLabel6.hidden = true
        dieLabel7.hidden = true
    }
    
    func dieScoreLabelsHidden() {
        dieScoreLabel1.hidden = true
        dieScoreLabel2.hidden = true
        dieScoreLabel3.hidden = true
        dieScoreLabel4.hidden = true
        dieScoreLabel5.hidden = true
        dieScoreLabel6.hidden = true
    }
    
    func allLabelsHidden() {
        dieLabel1.hidden = true
        dieLabel2.hidden = true
        dieLabel3.hidden = true
        dieLabel4.hidden = true
        dieLabel5.hidden = true
        dieLabel6.hidden = true
        dieLabel7.hidden = true
        dieScoreLabel1.hidden = true
        dieScoreLabel2.hidden = true
        dieScoreLabel3.hidden = true
        dieScoreLabel4.hidden = true
        dieScoreLabel5.hidden = true
        dieScoreLabel6.hidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    
    
}
