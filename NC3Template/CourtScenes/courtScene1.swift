//
//  courtScene1.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation

class courtScene1: UIViewController {
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var soundBtn: UIButton!
    @IBOutlet weak var restartBtn: UIButton!
    @IBOutlet weak var closeBtn: UIButton!
    
    let myText = "1979. \nMiami, FL. \n08:32 AM. \nMiami Metropolitan Justice Building."
    
    var bgSound: AVAudioPlayer = AVAudioPlayer()

    var counter = 0
    
    var check = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueBtn.borderBtn()
        
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)

        let bgFile = Bundle.main.path(forResource: "Typing", ofType: ".mp3")
        
        do {
            try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
        } catch {
            print("error")
        }
        
        //bgSound.play()
        
        lb1.setTextWithTypeAnimation(typedText: myText, characterDelay:  10)
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
    }
    
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
    }

}
