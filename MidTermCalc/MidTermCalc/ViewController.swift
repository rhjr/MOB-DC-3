//
//  ViewController.swift
//  MidTermCalc
//
//  Created by Roy Harrington Jr. on 7/15/15.
//  Copyright (c) 2015 Roy Harrington Jr. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Screen: UILabel!
    var numberOne = Int()
    var numberTwo = Int()
    var summation = Int()
    var operation = ""
    var numberInput = false
    
    @IBAction func Dot(sender: AnyObject) {
        var dot = sender.currentTitle
        
        Screen.text = Screen.text! + dot!!
    }
    @IBAction func Number(sender: AnyObject) {
        var number = sender.currentTitle
        if numberInput == true {
            Screen.text = Screen.text! + number!!;
        } else {
            Screen.text = number;
        }
        numberInput = true
    }
    @IBAction func Operation(sender: AnyObject) {
        operation = sender.currentTitle!!
        numberInput = false
        numberOne =  Screen.text!.toInt()!
    }
    @IBAction func Equals(sender: AnyObject) {
        numberTwo = Screen.text!.toInt()!
        numberInput = false
        if operation == "+" {
            summation = numberOne + numberTwo;
        } else if operation == "-" {
            summation = numberOne - numberTwo;
        } else if operation == "x" {
             summation = numberOne * numberTwo;
        } else if operation == "/" {
            summation = numberOne / numberTwo;
        } else if operation == "%" {
            summation = (numberOne * numberTwo) / 100
        }
        Screen.text = "\(summation)"
    }
    @IBAction func Clear(sender: AnyObject) {
        numberOne = 0
        numberTwo = 0
        summation = 0
        Screen.text = "\(0)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

