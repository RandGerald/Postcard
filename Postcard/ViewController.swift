//
//  ViewController.swift
//  Postcard
//
//  Created by RAND GERALD on 5/22/15.
//  Copyright (c) 2015 RAND GERALD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
//        messageLabel.hidden = !messageLabel.hidden
        
        // process message
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()

        // enterMessageTextField.text = ""
        enterMessageTextField.hidden = true
        enterMessageTextField.resignFirstResponder()

        // process name
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        // enterNameTextField.text = ""
        enterNameTextField.hidden = true
        enterNameTextField.resignFirstResponder()

        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

