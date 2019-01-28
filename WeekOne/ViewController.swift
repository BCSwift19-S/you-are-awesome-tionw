//
//  ViewController.swift
//  WeekOne
//
//  Created by Tion W on 1/14/19.
//  Copyright © 2019 Tion Wong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeimageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "When the Genius Bar needs help, they call you", "You brighten my day!", "You are da bomb!", "Hey, fabulous!", "You are tremendous!", "You've got the design skills of Jony Ive!", "I can't wait to download you app!"]
        //show message
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index==newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //show image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeimageView.image = UIImage(named: "image\(imageIndex)")
        
        //play sound
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while soundIndex == newIndex
        
        soundIndex = newIndex
        var soundName = "sound\(soundIndex)"
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
            } catch{
                print("error: file \(soundName) couldn't be played as a sound.")
            }
        } else{
            print("error: file \(soundName) couldn't be played as a sound.")
        }
    }
}
  
