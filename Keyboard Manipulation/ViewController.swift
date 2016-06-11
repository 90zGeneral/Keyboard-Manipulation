//
//  ViewController.swift
//  Keyboard Manipulation
//
//  Created by Roydon Jeffrey on 6/11/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

//UITextFieldDelegate will allow the viewController to control it
class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func action(sender: AnyObject) {
        
        //to update label with textField value
        label.text = textField.text
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //the viewController is responsible for this particular textField
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //this access the view in the view controller and removes the keyboard upon click
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //this removes the keyboard upon 'return' key press
        textField.resignFirstResponder()
        
        return true
        
    }


}

