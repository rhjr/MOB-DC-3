//
//  ViewController.swift
//  
// Mobile Development MidTerm "Calculator.Swift"
// Royarrington Jr. July 22, 1975

//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Screen: UILabel!
    var firstNumber = Float()
    var secondNumber = Float()
    var result = Float()
    var operation = ""
    var isTypingNumber = false

    @IBAction func Dot(sender: AnyObject) {
        var dot = sender.currentTitle

        Screen.text = Screen.text! + dot!!
    }
    @IBAction func Number(sender: AnyObject) {
        var number = sender.currentTitle
        if isTypingNumber == true {
            Screen.text = Screen.text! + number!!;
        } else {
            Screen.text = number;
        }
        isTypingNumber = true
    }
    @IBAction func Operation(sender: AnyObject) {
        operation = sender.currentTitle!!
        isTypingNumber = false
        firstNumber = (Screen.text! as NSString).floatValue
    }
    @IBAction func Equals(sender: AnyObject) {
        secondNumber = (Screen.text! as NSString).floatValue
        isTypingNumber = false
        if operation == "+" {
            result = firstNumber + secondNumber;
        } else if operation == "-" {
            result = firstNumber - secondNumber;
        } else if operation == "x" {
            result = firstNumber * secondNumber;
        } else if operation == "/" {
            result = firstNumber / secondNumber;
        } else if operation == "%" {
            result = (firstNumber * secondNumber) / 100
        } else if operation == "√" {
            result = sqrt(firstNumber)
        }
        Screen.text = "\(result)"
    }
    @IBAction func Clear(sender: AnyObject) {
        firstNumber = 0
        secondNumber = 0
        result = 0
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

