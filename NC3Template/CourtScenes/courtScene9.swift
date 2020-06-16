//
//  courtScene9.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene9: UIViewController {

    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!

    var person = ["The Doctor", "The Prosecutor"]
         
    var chat = ["You could see here that the perpetrator bit twice. The individual bit once, and then turned sideways to bite a second time.", "Doctor, would you tell us with certainty whether or not these marks are those of the defendant?", "Yes. Without a doubt.", "No further questions."]
         
    var dialogue = ["He reveals two large panels of photographs, one of the bite mark on the victim’s body, and the other, a set of teeth.", "The Prosecutor looks as if he has a boost of confidence.", "You could feel the gallery’s sense of disgust.","The Judge bangs his gavel to restore order. \nThe Prosecutor returns to his seat with a sense of triumph."]
          
    var counter = 0
                
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
         
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
             
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
             
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
                     
        personLb.isHidden = true
           
        backgroundImage.image = UIImage(named: "Scene9-10,18")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
                 
    @IBAction func nextBtn(_ sender: Any) {
        if counter == 0 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
                       
            personLb.isHidden = false
            personLb.text = person[0]
                       
            dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
        }else if counter == 1 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            
            personLb.isHidden = true
            
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
        }else if counter == 2 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
                                  
            personLb.isHidden = false
            personLb.text = person[1]
                                  
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
        }else if counter == 3 {
            personLb.text = person[0]
                                  
            dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
        }else if counter == 4 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            
            personLb.isHidden = true
            
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[2], characterDelay:  2)
        }else if counter == 5 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
                                  
            personLb.isHidden = false
            personLb.text = person[1]
                                  
            dialogueLb.setTextWithTypeAnimation(typedText: chat[3], characterDelay:  2)
        }else if counter == 6 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            
            personLb.isHidden = true
            
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[3], characterDelay:  2)
        }else if counter == 7 {
            performSegue(withIdentifier: "segue_9,10", sender: nil)
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
