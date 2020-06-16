//
//  courtScene10D.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene10D: UIViewController {

     @IBOutlet weak var personLb: UILabel!
     @IBOutlet weak var dialogueLb: UILabel!
     @IBOutlet weak var setting: UIView!
     @IBOutlet weak var textBox: UIView!

     var person = ["You", "The Doctor", "The Prosecutor"]
          
     var chat = ["Analyzing bite marks is part science, and part art. Depending on an examiner’s level of experience and education. Is that true, Doctor?", "I think that’s a fair statement.", "So these conclusions are, really, a matter of opinion. Have you tested that these sets of teeth will make the same mark over and over?", "Yes, we have. We took the models to a morgue, and tested the models on different individuals, and yes, they match.", "As with any art form, there must be subjective variance.", "Sure, there is an inconsistency. The odds of finding an identical set would be… astronomical.", "…No further questions.", "…the defendant may ask for mercy, but how nice it would’ve been for these young women, these victims, to ask mercy for themselves."]
          
     var dialogue = ["You are unsure, but the phrase ‘astronomical odds’ makes you feel slightly at ease.", "This is it. Your closing statement."]
           
     var counter = 0
                 
     var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
          
     override func viewDidLoad() {
         super.viewDidLoad()

         self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
              
         self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
              
         dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
                      
         personLb.text = person[0]
            
         backgroundImage.image = UIImage(named: "Scene9-10,18.png")
         backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
         self.view.insertSubview(backgroundImage, at: 0)
     }
                  
     @IBAction func nextBtn(_ sender: Any) {
         if counter == 0 {
            personLb.text = person[1]
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
         }else if counter == 1 {
            personLb.text = person[0]
            dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
         }else if counter == 2 {
            personLb.text = person[1]
            dialogueLb.setTextWithTypeAnimation(typedText: chat[3], characterDelay:  2)
         }else if counter == 3 {
            personLb.text = person[0]
            dialogueLb.setTextWithTypeAnimation(typedText: chat[4], characterDelay:  2)
         }else if counter == 4 {
            personLb.text = person[1]
            dialogueLb.setTextWithTypeAnimation(typedText: chat[5], characterDelay:  2)
         }else if counter == 5 {
            personLb.text = person[0]
            dialogueLb.setTextWithTypeAnimation(typedText: chat[6], characterDelay:  2)
         }else if counter == 6 {
             self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
             
             dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
             
             personLb.isHidden = true
         }else if counter == 7 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            
            personLb.isHidden = false
            personLb.text = person[2]
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[7], characterDelay:  2)
         }else if counter == 8 {
             self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
             
             dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
             
             personLb.isHidden = true
         }else if counter == 9{
             performSegue(withIdentifier: "segue_5,6", sender: nil)
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
