//
//  scene1.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 14/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation

class scene2: UIViewController {
    
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var bg: UIImageView!
    
    var dialogue = ["The roads were predictably silent. \nYou’re on your way home. ", "The faint glow of street lights passes through your windshields.", "Accompanied by the car’s stereo that’s playing a vaguely familiar song, you feel uneasy, but you’re on your way home."]
    
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let bgFile = Bundle.main.path(forResource: "Road Ambience", ofType: ".mp3")
        let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
        do {
            try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
            try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
        } catch {
            print("error")
        }
               
        bgSound.play()
        
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        bg.image = UIImage(named: "Scene2.jpg")!
        
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "Scene2.jpg")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
//
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  4)
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        buttonSound.play()
        if counter == 0{
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  4)
        }else if counter == 1{
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[2], characterDelay:  4)
        }else if counter == 2{
            bgSound.stop()
            performSegue(withIdentifier: "segue_23", sender: nil)
        }
        counter += 1
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
        buttonSound.play()
    }
    
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
        buttonSound.play()
    }
    
}
