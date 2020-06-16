//
//  courtScene5.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene5: UIViewController {
  
      @IBOutlet weak var personLb: UILabel!
      @IBOutlet weak var dialogueLb: UILabel!
      @IBOutlet weak var setting: UIView!
      @IBOutlet weak var textBox: UIView!

      var person = ["The Prosecutor"]
      
      var chat = ["In the next room, another young woman is seen lying in a pool of her own blood.", "I’d say she was lying face down but, her neck was twisted in an abnormal angle.", "Wounds all over her body. She was violated, assaulted.","She was strangled, with a pantyhose garrote, her neck was constricted to half its size.", "The other girl. Oh, where do I start.", "We still aren’t sure if she died from strangulation, or from the bash to her head, leaving a large hole in her skull.", "These were young, and innocent women. This man, a predator, engulfed in savagery. Tragedy will be what’s left of him. You will be his judge."]
      
      var dialogue = ["You could hear the grumbles. \nYou could feel the cold gaze from the gallery"]
       
      
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
          }else if counter == 4 {
                dialogueLb.setTextWithTypeAnimation(typedText: chat[5], characterDelay:  2)
          }else if counter == 5 {
                self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "TextBox")!)
                
                dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  2)
                
                personLb.isHidden = true
          }else if counter == 6{
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
