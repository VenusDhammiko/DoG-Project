//
//  ViewController.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 11/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation

class mainMenu: UIViewController {
    
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var restartBtn: UIButton!
    @IBOutlet weak var soundIcon: UIButton!
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    var suaraNyala = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartBtn.isEnabled = false
        
        let bgFile = Bundle.main.path(forResource: "BgMusic", ofType: ".wav")
        let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
        
        do {
            try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
            try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
        } catch {
            print("error")
        }
        
        bgSound.play()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "MainMenu.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)

    }
    
    @IBAction func playBtn(_ sender: Any) {
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
    
    @IBAction func soundBtn(_ sender: Any) {
        if(suaraNyala == true){
            suaraNyala = false
            bgSound.stop()
            buttonSound.stop()
            soundIcon.setImage(UIImage(named: "SoundOFF.png"), for: .normal)
        }else if(suaraNyala == false){
            suaraNyala = true
            bgSound.play()
            buttonSound.play()
            soundIcon.setImage(UIImage(named: "SoundON.png"), for: .normal)
        }
    }
    
    
}

