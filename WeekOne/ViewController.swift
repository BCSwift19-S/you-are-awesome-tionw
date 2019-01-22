//
//  ViewController.swift
//  WeekOne
//
//  Created by Tion W on 1/14/19.
//  Copyright © 2019 Tion Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("😎viewDidLoad just executed!")
    }

    @IBAction func showButtonPressed(_ sender: UIButton) {
        //print("🤪I just pressed a button!")
        let message1 = "You are awesome!"
        let message2 = "You are great!"
        let message3 = "You are amazing!"
        ß
        if messageLabel.text == message1{
            messageLabel.text = message2
        }
        else if messageLabel.text == message2 {
            messageLabel.text = message3
        }
        else{
            messageLabel.text = message1
        }
        //messageLabel.textColor = UIColor.red
    }
}
  
