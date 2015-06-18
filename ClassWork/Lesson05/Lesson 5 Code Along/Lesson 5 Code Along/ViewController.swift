//
//  ViewController.swift
//  Lesson 5 Code Along
//
//  Created by LOANER on 6/17/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var generayeButton: UIButton!
    
    var numberOfTimes = 0
    var factbook = Factbook()
    var myColorwheel = Colorwheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        factLabel.text = "Hello"
        println("ready")
    }

    @IBAction func generateFact(sender: UIButton) {
        ++numberOfTimes
        factLabel.text = "Hit \(numberOfTimes)"
        
        let myrandomFact = myFactBook.randomColor()
        factLabel.text = randomFact
        
        
    }
}

