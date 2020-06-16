//
//  scene4.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 14/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation
class scene4: UIViewController {
    
   @IBOutlet weak var setting: UIView!
   @IBOutlet weak var bg: UIImageView!
   
   var buttonSound: AVAudioPlayer = AVAudioPlayer()
   var bgSound: AVAudioPlayer = AVAudioPlayer()
    
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
      }
    
    @IBAction func C1(_ sender: Any) {
        performSegue(withIdentifier: "segue_4C123", sender: nil)
        bgSound.stop()
        buttonSound.play()
    }
    
    @IBAction func C2(_ sender: Any) {
        performSegue(withIdentifier: "segue_4C123", sender: nil)
        bgSound.stop()
        buttonSound.play()
    }
    
    @IBAction func C3(_ sender: Any) {
        performSegue(withIdentifier: "segue_4C123", sender: nil)
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
