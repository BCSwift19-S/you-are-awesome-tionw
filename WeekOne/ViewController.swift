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
    @IBOutlet weak var soundSwitch: UISwitch!
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
    
    func nonRepeatingrandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber==newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        //var soundName = "sound\(soundIndex)"
        if let sound = NSDataAsset(name: soundName){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("error: file \(soundName) couldn't be played as a sound.")
            }
        } else{
            print("error: file \(soundName) didn't load.")
        }
    }

    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1{
            awesomePlayer.stop()
        }
    }
    
    @IBAction func showButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!", "You are fantastic!", "When the Genius Bar needs help, they call you", "You brighten my day!", "You are da bomb!", "Hey, fabulous!", "You are tremendous!", "You've got the design skills of Jony Ive!", "I can't wait to download you app!"]
        //show message
        index = nonRepeatingrandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show image
        imageIndex = nonRepeatingrandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeimageView.image = UIImage(named: "image\(imageIndex)")
        
        //play sound
        if soundSwitch.isOn == true {
            soundIndex = nonRepeatingrandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            
            let soundName = "sound\(soundIndex)"

            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
    }
}
  
