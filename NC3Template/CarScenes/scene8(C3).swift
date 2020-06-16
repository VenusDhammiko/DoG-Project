//
//  scene8(C3).swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation
class scene8_C3_: UIViewController {
    
    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!
    @IBOutlet weak var bg: UIImageView!
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    
    var person = ["You", "Police Officer"]
    
    var chat = ["You’re under arrest for evading a law enforcement officer. You have the right to remain silent. Anything you say may be used against you in a court of law. You have the right to an attorney…"]
    
    var dialogue = ["You run. \nYou try to make it to the fences of one of the houses around you.", "The cop tackles you.", "You’re no longer on your way home."]
    
    var counter = 0
           
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let bgFile = Bundle.main.path(forResource: "Handcuff", ofType: ".mp3")
        let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
        
        do {
            try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
             try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
        } catch {
            print("error")
        }
               
        
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
        
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
                
        personLb.isHidden = true
                
        bg.image = UIImage(named: "Scene1.jpg")!
//        backgroundImage.image = UIImage(named: "Scene1.jpg")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
    }
            
    @IBAction func nextBtn(_ sender: Any) {
        buttonSound.play()
        if counter == 0{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
            
            personLb.isHidden = true
            
            bg.image = UIImage(named: "Scene1.jpg")!
            //backgroundImage.image = UIImage(named: "Scene1.jpg")
        }else if counter == 1{
            bgSound.play()
            
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
            
            personLb.isHidden = false
            personLb.text = person[1]
            
            bg.image = UIImage(named: "Scene1.jpg")!
            //backgroundImage.image = UIImage(named: "Scene1.jpg")
        }else if counter == 2{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[2], characterDelay:  2)
            
            personLb.isHidden = true
            
            bg.image = UIImage(named: "Scene9F.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9F.jpg")
        }else if counter == 3{
             performSegue(withIdentifier: "8C3TBC", sender: nil)
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
