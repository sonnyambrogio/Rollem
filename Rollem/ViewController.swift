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
    
    
    //MARK: - ** Outlets **
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //MARK: - ** Actions **
    @IBAction func rollTheDice(sender: AnyObject) {
        
        
        
        
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

