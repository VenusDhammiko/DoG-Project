//
//  toBeContinued.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation

class toBeContinued: UIViewController {
    
     @IBOutlet weak var mainMenuBtn: UIButton!
    
     var buttonSound: AVAudioPlayer = AVAudioPlayer()
     
     var bgSound: AVAudioPlayer = AVAudioPlayer()
    
     var backgroundImage = UIImageView(frame: UIScreen.main.bounds)
     
     override func viewDidLoad() {
         super.viewDidLoad()

         let bgFile = Bundle.main.path(forResource: "Good & True Ending", ofType: ".mp3")
         let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
         
         do {
             try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
              try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
         } catch {
             print("error")
         }
        
         bgSound.play()
        
         mainMenuBtn.circleBord()
         
         backgroundImage.image = UIImage(named: "ToBeContinued-2.pdf")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
         self.view.insertSubview(backgroundImage, at: 0)
     }
             
    @IBAction func mainMenuBtn(_ sender: Any) {
        bgSound.stop()
    }
}
