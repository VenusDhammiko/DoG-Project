//
//  scene8CA1.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation

class scene8CA1: UIViewController {

    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!
    @IBOutlet weak var bg: UIImageView!
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    
    var person = ["You", "Police Officer"]
    
    var chat = ["Good morning officer, I think I’m lost.", "You ran two stop signs.", "I apologize, I couldn’t make your car with the headlights in my eyes, and well, I guess I got spooked.", "License and registration, please.", "Oh yeah, here you go.", "So, are we good here, officer?"]
    
    var dialogue = ["There’s a ski mask, an ice pick, handcuffs, and several other items.", "You take your wallet from the pile.", "You give the officer your license. \nIt checks out.", "The officer looks into the back of your car.", "He cuffs you, and brings you to the back of the police cruiser. \nYou’re no longer on your way home."]
    var counter = 0
           
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgFile = Bundle.main.path(forResource: "Paper Folding", ofType: ".mp3")
        let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
        do {
            try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
            try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
        } catch {
            print("error")
        }

        bgSound.play()
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
                
        personLb.isHidden = true
                
        bg.image = UIImage(named: "Scene9A.jpg")!
      
//        backgroundImage.image = UIImage(named: "Scene9A.jpg")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
        
    }
            
    @IBAction func nextBtn(_ sender: Any) {
        buttonSound.play()
        if counter == 0{
            //backgroundImage.image = UIImage(named: "Scene9B.jpg")
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
            bg.image = UIImage(named: "Scene9B.jpg")!
            dialogueLb.text = ""
        }else if counter == 1{
             performSegue(withIdentifier: "segue_8A8C1", sender: nil)
        }
        counter += 1
    }
    
    
    @IBAction func closeBtn(_ sender: Any) {
        buttonSound.play()
        setting.isHidden = true
    }
            
    @IBAction func settingBtn(_ sender: Any) {
        buttonSound.play()
        setting.isHidden = false
    }

}
