//
//  scene8(C2).swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation
class scene8_C2_: UIViewController {

    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!
    @IBOutlet weak var bg: UIImageView!
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    
    var person = ["You", "Police Officer"]
    
    var chat = ["You ran two stop signs.", "I apologize, I couldn’t make your car with the headlights in my eyes, and well, I guess I got spooked.", "License and registration, please.", "Ah yes, absolutely.", "Come with me to the station, sir."]
    
    var dialogue = ["You check your pockets, and your jacket, to no avail.", "The officer looks into the back of your car.", "He brings you to the back of the police cruiser. You’re no longer on your way home."]
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
        
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
        
        dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
                
        personLb.text = person[1]
                
        bg.image = UIImage(named: "Scene9E.jpg")!
//        backgroundImage.image = UIImage(named: "Scene9E.jpg")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
    }
            
    @IBAction func nextBtn(_ sender: Any) {
        buttonSound.play()
        if counter == 0{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
            
            personLb.text = person[0]
            
            bg.image = UIImage(named: "Scene9E.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9E.jpg")
        }else if counter == 1{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
            
            personLb.text = person[1]
            
            bg.image = UIImage(named: "Scene9E.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9E.jpg")
        }else if counter == 2{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: chat[3], characterDelay:  2)
            
            personLb.text = person[0]
            
            bg.image = UIImage(named: "Scene9E.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9E.jpg")
        }else if counter == 3{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
            
            personLb.isHidden = true
            
            bg.image = UIImage(named: "Scene9E.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9E.jpg")
        }else if counter == 4{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
                      
            personLb.isHidden = true
            
            bg.image = UIImage(named: "Scene9D.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9D.jpg")
        }else if counter == 5{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: chat[4], characterDelay:  2)
            
            bgSound.play()
            
            personLb.isHidden = false
            personLb.text = person[1]
            
            bg.image = UIImage(named: "Scene9E.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9E.jpg")
        }else if counter == 6{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[2], characterDelay:  2)
                      
            personLb.isHidden = true
                      
            bg.image = UIImage(named: "Scene9F.jpg")!
            //backgroundImage.image = UIImage(named: "Scene9F.jpg")
        }else if counter == 7{
             performSegue(withIdentifier: "8C2TBC", sender: nil)
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
