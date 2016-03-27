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
    var diceView: UIView?
    
    
    
    //MARK: - ** Outlets **
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //MARK: - ** Actions **
    @IBAction func rollTheDice(sender: AnyObject) {
        setSafetyOfViewBeforeRoll()
        drawDiceView()
        chooseBrainAndRoll(numberOfSides!)
    }
    
    @IBAction func diceSelectionAction(sender: UIButton) {
        numberOfSides = Int(sender.currentTitle!)
        print("Number of Sides Chosen is '\(numberOfSides!)'")
        resetButtonOutlet.hidden = false
        buttonStack.hidden = true
        rollButton.hidden = false
        titleLabel.text = "Roll the \(numberOfSides!) Sided Dice"
        
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
        outputOfRoll = nil
        diceView?.removeFromSuperview()
        diceView = nil
        titleLabel.text = "Choose Your Weapon"

        
    }
    
    func addBlurEffect() {
        let effectStyle = UIBlurEffect(style: .Dark)
        let effectView = UIVisualEffectView(effect: effectStyle)
    
        effectView.frame = (diceView?.bounds)!
        effectView.layer.cornerRadius = 15
        diceView?.addSubview(effectView)
    }
    
    func drawDiceView() {
        // calculate the width of the new view to be 25% smaller than the width of the screen
        let newFrameWidth = self.view.frame.width / 1.5
        
        // calculate the newViews centre position
        let screenCentreX = (self.view.frame.width / 2) - (newFrameWidth / 2)
        let screenCentreY = (self.view.frame.height / 2) - (newFrameWidth / 2)
        
        // create a new view based on the specs above
        diceView = UIView(frame: CGRect(x: screenCentreX, y: screenCentreY, width: newFrameWidth, height: newFrameWidth))
        
        // set a background colour of the new view so it is visable during programming
        diceView!.backgroundColor = UIColor.clearColor()
        
        // round the corners for better appearence
        diceView!.layer.cornerRadius = 15
        
        // add blur effect to background
        addBlurEffect()
        
        // add the newView as a child of the existing view and display it on the screen
        self.view.addSubview(diceView!)
        
        
    }
    
    func setSafetyOfViewBeforeRoll() {
        let subViewCount = diceView?.subviews.count
        if subViewCount > 0 {
        diceView?.removeFromSuperview()
        diceView = nil
        }
    }
    
    func drawNumberInDiceView(number: Int) {
        
        let numberToDisplay = number
        // Create the baseSize of the Frame
        let frameWidth = (diceView?.frame.width)!
        let frameHeight = (diceView?.frame.height)!
        
        let centreX = (frameWidth / 2) - (frameWidth / 2)
        let centreY = (frameHeight / 2) - (frameHeight / 2)
        
        let labelToDisplay = UILabel(frame: CGRect(x: centreX, y: centreY, width: frameWidth, height: frameHeight))
        
        labelToDisplay.text = String(numberToDisplay)
        labelToDisplay.textColor = UIColor.whiteColor()
        labelToDisplay.textAlignment = .Center
        labelToDisplay.font = UIFont(name: "Helvetica Neue", size: 204.0)
        
        diceView?.addSubview(labelToDisplay)
        
        
    }
    
    func chooseBrainAndRoll(diceType: Int) {
        
        let _numberOfSides = diceType
        
        switch _numberOfSides {
        case 4:
            let brain = FourSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            drawNumberInDiceView(outputOfRoll!)
            print("Numbers to Choose From: \(brain.rollableNumbers)")
            print("Roll of the Dice = \(outputOfRoll!)")
            
        case 6:
            let brain = SixSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            drawNumberInDiceView(outputOfRoll!)
            print("Numbers to Choose From: \(brain.rollableNumbers)")
            print("Roll of the Dice = \(outputOfRoll!)")
            
        case 8:
            let brain = EightSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            drawNumberInDiceView(outputOfRoll!)
            print("Numbers to Choose From: \(brain.rollableNumbers)")
            print("Roll of the Dice = \(outputOfRoll!)")
            
        case 10:
            let brain = TenSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            drawNumberInDiceView(outputOfRoll!)
            print("Numbers to Choose From: \(brain.rollableNumbers)")
            print("Roll of the Dice = \(outputOfRoll!)")
            
        case 12:
            let brain = TwelveSidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            drawNumberInDiceView(outputOfRoll!)
            print("Numbers to Choose From: \(brain.rollableNumbers)")
            print("Roll of the Dice = \(outputOfRoll!)")
            
        case 20:
            let brain = TwentySidedBrain()
            let output = brain.roll()
            outputOfRoll = output
            drawNumberInDiceView(outputOfRoll!)
            print("Numbers to Choose From: \(brain.rollableNumbers)")
            print("Roll of the Dice = \(outputOfRoll!)")
            
        default:
            print("Some Shit went really bad for You to end up Here!!!")
        }
        
    }




}








