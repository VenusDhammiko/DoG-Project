//
//  scene3.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 14/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation
class scene3: UIViewController {

    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var bg: UIImageView!
    
     var dialogue = "Another car appears with bright headlights. \nAn intense light appears in your rearview mirror. \nThe car is black, or at least you think it is."
    
     var buttonSound: AVAudioPlayer = AVAudioPlayer()
     var bgSound: AVAudioPlayer = AVAudioPlayer()
    
     var counter = 0
     
      override func viewDidLoad() {
          super.viewDidLoad()
            
          let bgFile = Bundle.main.path(forResource: "Road Ambience", ofType: ".mp3")
          let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
        
          do {
              try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
               try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
          } catch {
              print("error")
          }
               
          bgSound.play()
          self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
          
          bg.image = UIImage(named: "Scene3.jpg")!
        
//          let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//          backgroundImage.image = UIImage(named: "Scene3.jpg")
//          backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//          self.view.insertSubview(backgroundImage, at: 0)

        
          dialogueLb.setTextWithTypeAnimation(typedText: dialogue, characterDelay:  4)
      }
      
    @IBAction func nextBtn(_ sender: Any) {
        bgSound.stop()
        buttonSound.play()
    }
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
        buttonSound.play()
    }
      
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
        buttonSound.play()
    }

}
