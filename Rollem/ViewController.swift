//
//  ViewController.swift
//  Rollem
//
//  Created by Santino Ambrogio on 2016-03-26.
//  Copyright © 2016 Santino Ambrogio. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    //MARK: - ** Variables and Constants **
    
    var numberOfSides: Int?
    var outputOfRoll: Int?
    
    
    
    //MARK: - ** Outlets **
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //MARK: - ** Actions **
    @IBAction func rollTheDice(sender: AnyObject) {

        switch numberOfSides {
        case 4?:
            let brain = FourSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            print("Roll of the Dice = \(outputOfRoll!)")
        case 6?:
            let brain = SixSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            print("Roll of the Dice = \(outputOfRoll!)")
        case 8?:
            let brain = EightSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            print("Roll of the Dice = \(outputOfRoll!)")
        case 10?:
            let brain = TenSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            print("Roll of the Dice = \(outputOfRoll!)")
        case 12?:
            let brain = TwelveSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            print("Roll of the Dice = \(outputOfRoll!)")
        case 20?:
            let brain = TwentySidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            print("Roll of the Dice = \(outputOfRoll!)")
        default:
            print("Some Shit went really bad for You to end up Here!!!")
        }
    }
    
    @IBAction func diceSelectionAction(sender: UIButton) {
        numberOfSides = Int(sender.currentTitle!)
        print("Number of Sides Chosen is '\(numberOfSides!)'")
        resetButtonOutlet.hidden = false
        buttonStack.hidden = true
        rollButton.hidden = false
        titleLabel.text = "Roll the \(numberOfSides!) Sided Die"
        
    }

    @IBAction func resetButtonAction(sender: AnyObject) {
        resetEverything()
        
    }

    
    //MARK: - ** LifeCycle **
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resetEverything()
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: - ** Functions **
    func resetEverything() {
        resetButtonOutlet.hidden = true
        buttonStack.hidden = false
        rollButton.hidden = true
        numberOfSides = nil
        titleLabel.text = "Choose Your Weapon"
    }
    
    

    
    
    
    
    
    
    
    
}













