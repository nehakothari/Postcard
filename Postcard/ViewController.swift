//
//  ViewController.swift
//  Postcard
//
//  Created by Neha Kothari on 9/26/14.
//  Copyright (c) 2014 Cactus Garden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var sendMessageButtonText: UIButton!
    
    @IBAction func sendMessageButton(sender: UIButton) {
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        sendMessageButtonText.setTitle("Postcard Sent", forState: UIControlState.Normal)
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

