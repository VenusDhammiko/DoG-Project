//
//  courtScene6.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene6: UIViewController {

  
    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!

    var person = ["The Detective", "The Prosecutor"]
    
    var chat = ["He declined to have an attorney present during our questioning of him. As a matter of fact, he requested it that way.", "He also requested to have this interrogation off the record.", "Or so he thought.", "Here in the state of Florida, it is legal to use… surreptitious recording devices. bugs.", "The device malfunctioned, cutting out his confession.", "What did he say?", "That he was a vampire."]
    
    var dialogue = ["Our first witness. \nThe Detective.", "With his testimony regarding your recent questioning. \nYou feel slightly uneasy, but you have to keep calm. \nOr at least seem like you’re calm.", "The Prosecutor acts curious.", "The Detective somewhat sheepishly answers.", ]
     
    
    var counter = 0
           
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
        
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
                
        personLb.isHidden = true
      
        backgroundImage.image = UIImage(named: "Scene6-8,17.png")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
            
    @IBAction func nextBtn(_ sender: Any) {
        if counter == 0 {
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  2)
        }else if counter == 1 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
            
            personLb.isHidden = false
            personLb.text = person[0]
        }else if counter == 2 {
              dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
              
              personLb.isHidden = false
              personLb.text = person[0]
        }else if counter == 3 {
              dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
              
              personLb.isHidden = false
              personLb.text = person[0]
        }else if counter == 4 {
              dialogueLb.setTextWithTypeAnimation(typedText: chat[3], characterDelay:  2)
              
              personLb.isHidden = false
              personLb.text = person[0]
        }else if counter == 5 {
             dialogueLb.setTextWithTypeAnimation(typedText: chat[4], characterDelay:  2)
              
              personLb.isHidden = false
              personLb.text = person[0]
        }else if counter == 6{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
                   
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[2], characterDelay:  2)
                           
            personLb.isHidden = true
        }else if counter == 7 {
             dialogueLb.setTextWithTypeAnimation(typedText: chat[5], characterDelay:  2)
              
              personLb.isHidden = false
              personLb.text = person[1]
        }else if counter == 8{
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
                   
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[3], characterDelay:  2)
                           
            personLb.isHidden = true
        }else if counter == 9 {
            dialogueLb.setTextWithTypeAnimation(typedText: chat[6], characterDelay:  2)
              
            personLb.isHidden = false
            personLb.text = person[0]
        }else if counter == 10{
              performSegue(withIdentifier: "segue_6,7", sender: nil)
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
