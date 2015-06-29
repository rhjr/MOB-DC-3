//
//  ViewController.swift
//  Lesson6e
//
//  Created by Roy Harrington Jr. on 6/22/15.
//  Copyright (c) 2015 Roy Harrington Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextFields()
        setupButons()
    }
    
    func setupTextFields() {
        nameField.placeholder = "NAME"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
    }
    @IBAction func clearbutton(sender: AnyObject){
        
        nameField.text =  ""
        ageField.text = ""
        sexField.text = ""
        locationField.text = ""
    }
    
    
    func formatTextField(field: UITextField) {
        field.keyboardType = (field == ageField) ? UIKeyboardType.NumberPad : UIKeyboardType.ASCIICapable
        field.textColor = (field == sexField) ? UIColor.redColor() : UIColor.blackColor()
    }
    
    func setupButons(){
        clearButton.setTitle("clear", forState: UIControlState.Normal)
        submitButton.setTitle("submit", forState: UIControlState.Normal)
    }
    
    @IBAction func submitAction(sender: UIButton){

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexField.text
            destinationVC.location = locationField.text
            
            
            
        }
    }

}

