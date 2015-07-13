//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var royCigarName: UITextField!
    @IBOutlet weak var royCigarBrand: UITextField!
    @IBOutlet weak var royTableView: UITableView!
    
    var = cigar[[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        royCigarName.delegate = self
        royCigarBrand.delegate = self
        royTableView.delegate = self
        
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow", name: UIKeyboardWillShowNotification, object: nil?)
    }
    
    func keyboardWillShow(notification: NSNotification){
        println("keyboard will show")
    }
    
        let backgroundColor = UIColor(red: <#CGFloat#>, green: <#CGFloat#>, blue: <#CGFloat#>, alpha: <#CGFloat#>)
    
        
        
    }
    
}

