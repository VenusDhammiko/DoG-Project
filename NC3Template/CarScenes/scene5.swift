//
//  scene5.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation
class scene5: UIViewController {

    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var bg: UIImageView!
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    var bgSound2: AVAudioPlayer = AVAudioPlayer()
    
    var counter = 0
    
    var dialogue = ["Your focus shifts from this car’s headlights. \nAnother source of light shines from their dashboard.", "Emergency vehicle lights turn on It’s red and blue, complemented with sirens."]
         
    override func viewDidLoad() {
        super.viewDidLoad()

        let bgFile = Bundle.main.path(forResource: "Police Siren", ofType: ".mp3")
        let bgFile2 = Bundle.main.path(forResource: "Road Ambience", ofType: ".mp3")
        let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
            do {
                try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
                try bgSound2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile2!))
                try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
            } catch {
                print("error")
            }
        
        bgSound2.play()
               
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        bg.image = UIImage(named: "Scene6.jpg")!
        
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "Scene6.jpg")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
           
        dialogueLb.setTextWithTypeAnimation(typedText: dialogue[0], characterDelay:  4)
    }
         
    @IBAction func nextBtn(_ sender: Any) {
        buttonSound.play()
        if counter == 0{
            dialogueLb.setTextWithTypeAnimation(typedText: dialogue[1], characterDelay:  4)
            bgSound.play()
        }else if counter == 1{
            performSegue(withIdentifier: "segue_56", sender: nil)
            bgSound2.stop()
        }
        counter += 1
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        buttonSound.play()
        setting.isHidden = true
    }
         
    @IBAction func settingBtn(_ sender: Any) {
        buttonSound.play()
        setting.isHidden = false
    }
}
