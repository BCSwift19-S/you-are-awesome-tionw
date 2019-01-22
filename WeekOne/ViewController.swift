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
        messageLabel.text = "You are awesome!"
        messageLabel.textColor = UIColor.red
    }
    @IBAction func showButtonPressed2(_ sender: UIButton) {
        messageLabel.text = "You are great!"
        messageLabel.textColor = UIColor.blue
    }
}
  
