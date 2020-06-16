//
//  page1.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 11/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit
import AVFoundation

class scene1: UIViewController {
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var soundBtn: UIButton!
    @IBOutlet weak var restartBtn: UIButton!
    @IBOutlet weak var closeBtn: UIButton!
    
    let myText = "1975 \nSalt Lake City, UT. \n03:23 AM."
    
    var buttonSound: AVAudioPlayer = AVAudioPlayer()
    var bgSound: AVAudioPlayer = AVAudioPlayer()
    var counter = 0
    var check = false
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueBtn.borderBtn()
        
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)

        let bgFile = Bundle.main.path(forResource: "Typing", ofType: ".mp3")
        let buttonFile2 = Bundle.main.path(forResource: "Button Click", ofType: ".mp3")
        do {
            try bgSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: bgFile!))
            try buttonSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: buttonFile2!))
        } catch {
            print("error")
        }
        
        bgSound.play()
        
        lb1.setTextWithTypeAnimation(typedText: myText, characterDelay:  10)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 3.5, repeats: false) { timer in
            self.bgSound.stop()
            
            timer.invalidate()
        }
        
    
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

extension UILabel {
    func setTextWithTypeAnimation(typedText: String, characterDelay: TimeInterval = 5.0) {
        text = ""

        var writingTask: DispatchWorkItem?
        writingTask = DispatchWorkItem { [weak weakSelf = self] in
            for character in typedText {
                DispatchQueue.main.async {
                    weakSelf?.text!.append(character)
                }
                Thread.sleep(forTimeInterval: characterDelay/100)
            }
        }

        if let task = writingTask {
            let queue = DispatchQueue(label: "typespeed", qos: DispatchQoS.userInteractive)
            queue.asyncAfter(deadline: .now() + 0.05, execute: task)
        }
    }

    
    func borderLb(){
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2.0
    }
}

extension UIView {
    func borderView(){
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2.0
    }
}

extension UIButton {
    func borderBtn(){
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2.0
    }
}
