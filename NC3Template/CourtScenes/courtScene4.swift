//
//  courtScene4.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene4: UIViewController {

    
    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var textBox: UIView!

    
    var person = ["The Prosecutor"]
    
    var chat = ["January 15th, 1978. Before dawn. A young woman just arrived at her sorority house, after a date. She hears a solid thump from upstairs.", "She sees a man, he flees, away from the house, carrying a log.", "She quickly heads upstairs to investigate, where she sees one of her sorority sisters, coughing up blood.", "She could see that her face was bludgeoned. She sees her roommate as well, dazed, on her bed.", "They were the lucky ones."]
    
    var dialogue = [""]
    
    var counter = 0
           
    var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
        
        dialogueLb.setTextWithTypeAnimation(typedText: chat[0], characterDelay:  2)
                
        personLb.text = person[0]
      
        backgroundImage.image = UIImage(named: "Scene3-5.png")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
            
    @IBAction func nextBtn(_ sender: Any) {
        if counter == 0 {
            dialogueLb.setTextWithTypeAnimation(typedText: chat[1], characterDelay:  2)
        }else if counter == 1 {
                   dialogueLb.setTextWithTypeAnimation(typedText: chat[2], characterDelay:  2)
        }else if counter == 2 {
                   dialogueLb.setTextWithTypeAnimation(typedText: chat[3], characterDelay:  2)
        }else if counter == 3 {
                   dialogueLb.setTextWithTypeAnimation(typedText: chat[4], characterDelay:  2)
        }else if counter == 4{
            performSegue(withIdentifier: "segue_4,5", sender: nil)
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
