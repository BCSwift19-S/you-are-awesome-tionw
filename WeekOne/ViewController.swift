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
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("😎viewDidLoad just executed!")
    }

    @IBAction func showButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "When the Genius Bar needs help, they call you", "You brighten my day!", "You are da bomb!", "Hey, fabulous!", "You are tremendous!", "You've got the design skills of Jony Ive!", "I can't wait to download you app!"]
        var newIndex = -1
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
            
        } while index==newIndex
        index = newIndex
        messageLabel.text = messages[index]
//        messageLabel.text = messages.randomElement()!
//        messageLabel.text = messages[index]
//
//        if index == messages.count-1 {
//            index = 0
//        }
//        else{
//            index = index + 1
//        }

        //print("🤪I just pressed a button!")
//        let message1 = "You are awesome!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"+
//
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//        }
//        else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        }
//        else{
//            messageLabel.text = message1
//        }
        
    }
}
  
