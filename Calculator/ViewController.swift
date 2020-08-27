//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var displayNumber : String = "0"
    
    private var dotButtonEnable : Bool = true
    
    var number : String
    {
        get { return displayNumber }
        
        set
        {
            displayNumber = displayNumber != "0" ? displayNumber + newValue : newValue
            
            displayLabel.text = displayNumber
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        displayLabel.text = number
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton)
    {
        
        
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton)
    {
        if let number = sender.currentTitle
        {
            
            if number != "."
            {
                self.number = number
            }
            else
            {
                if dotButtonEnable
                {
                    self.number = number
                    
                    dotButtonEnable = false
                }
            }
            
        }
    
    }

}

