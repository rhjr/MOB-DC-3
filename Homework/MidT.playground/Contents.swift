//Roy Harrington Jr's MidTerm

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display : UIlabel!

var numberOne = Int()
var numberTwo = Int()
var numberInput = false
var summation = Int()
var operatoR = ""

//Function for Numbers Input

func numB(sender: AnyObject) {
var number = label.display
if numberInput == true {
   label.text = label.text! + number
} else {
    label.text = number;
}
numberInput == true
    
}

func operators(sender: AnyObject){
    numberInput = false
    numberOne = label.text!.toInt() !
    operatoR = label.text !!
}

    func sum(sender: AnyObject){
        numberTwo = screen.text!.toInt() !
        if operatoR == "+" {
            summation = numberOne + numberTwo
        }else if operatoR == "-" {
            summation = numberOne - numberTwo
        }else if operatoR == "x" {
            summation = numberOne * numberTwo
        }else{
            summation = numberOne / numberTwo
        }
        label.text = "\(summation)"
        }
    
    }

func clr(sender: AnyObject) {
    numberOne = 0
    numberTwo = 0
    numberInput = falsesummation = 0
    label.text = "\(summation)"
    
}
override func viewDidLoad() {
    super.viewDidLoad()
}

override func didRecieveMemoryWarning() {
    super.didRecieveMemoryWarning()

}


}