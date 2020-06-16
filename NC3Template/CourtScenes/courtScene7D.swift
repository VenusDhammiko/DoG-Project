//
//  courtScene8.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene7D: UIViewController {

   
    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!

    var person = ["You"]
         
    var chat = ["Your honor, this entire testimony should be stricken from the record on the basis that the word “surreptitious” should automatically disqualify anything masquerading as evidence.", "If it were truly evidence, it wouldn’t have to be describe with such a word, as it is synonymous with secret, clandestine, sly, concealed… hidden.", "Not even mentioning the fact that the most important part of his story was… conveniently missing. One might even conclude he’s lying."]
         
    var dialogue = ["The Prosecutor is stupefied. \nYou feel a rush of adrenaline."]
          
    var counter = 0
                
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
         
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
             
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
             
        dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
                     
        personLb.text = person[0]
           
        backgroundImage.image = UIImage(named: "Scene6-8,17.png")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
                 
    @IBAction func nextBtn(_ sender: Any) {
        if counter == 0 {
            dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
        }else if counter == 1 {
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
        }else if counter == 2 {
            dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
        }else if counter == 3 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
            
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
            
            personLb.isHidden = true
        }else if counter == 4{
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
