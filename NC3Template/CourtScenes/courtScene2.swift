//
//  courtScene2.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene2: UIViewController {

    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!

    
    var person = ["The Bailiff", "The Judge", "The Prosecutor"]
    
    var chat = ["Court will come to order", "Please rise for Honorable Justice", "Well, then. Let’s begin.", "Ladies and gentleman, this case, it is so much more than murder. We will be stopping a monster."]
    
    var dialogue = ["It has been four years. \nFour years of trials. \nOf fighting. \nFor your right to live.", "And it is time to live another day.", "It’s a full house. \nThe room trembles from whispers of the gallery. \nYou could feel the glances of doubt. \nThey are all here for you. \nWhatever the outcome.", "The Judge. \nA stout, venerable man, with a tendency for old Southern sayings. \nThe Prosecutor. \nA slender, seemingly feeble, but firm middle-aged man.", "The Prosecutor stands up, somewhat nervously, as it is a national broadcast."]
    
    var counter = 0
           
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
        
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
                
        personLb.isHidden = true
      
        backgroundImage.image = UIImage(named: "Scene2,12.png")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
            
    @IBAction func nextBtn(_ sender: Any) {
        if counter == 0 {
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
        }else if counter == 1 {
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[2], characterDelay:  2)
        }else if counter == 2 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            
            personLb.isHidden = false
            personLb.text = person[0]
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
        }else if counter == 3 {
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
        }else if counter == 4 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            
            personLb.isHidden = true
            
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[3], characterDelay:  2)
        }else if counter == 5{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            
            personLb.isHidden = false
            personLb.text = person[1]
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
        }else if counter == 6 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            
            personLb.isHidden = true
            
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[4], characterDelay:  2)
        }else if counter == 7{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            
            personLb.isHidden = false
            personLb.text = person[2]
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[3], characterDelay:  2)
        }else if counter == 8{
            performSegue(withIdentifier: "segue_2,3", sender: nil)
        }
        counter += 1
    }
    
    
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
    }
            
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
    }

}
