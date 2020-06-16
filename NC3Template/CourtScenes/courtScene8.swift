//
//  courtScene8.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene8: UIViewController {

    
    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!

    var person = ["The Doctor"]
         
    var chat = ["Everyone has distinctive characters when it comes to their teeth, making them unique.", "Alignment, irregularities, chips, size, sharpness…"]
         
    var dialogue = ["The next witness. \nThe Doctor.", "He brings out evidence regarding bite marks on the victim’s body."]
          
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
            
            personLb.isHidden = false
            personLb.text = person[0]
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
        }else if counter == 2 {
            self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
            
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
        }else if counter == 3{
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
