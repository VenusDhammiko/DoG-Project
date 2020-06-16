//
//  page2.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 11/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class mentahanOption: UIViewController {
    @IBOutlet weak var settingBtn: UIButton!
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var soundBtn: UIButton!
    @IBOutlet weak var restartBtn: UIButton!
    
    @IBOutlet weak var personLb: UILabel!
    @IBOutlet weak var dialogueLb: UILabel!
    @IBOutlet weak var textBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personLb.text = "Officer"
        dialogueLb.text = "License and registration, please."
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "421091.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        self.textBox.backgroundColor = UIColor(patternImage: UIImage(named: "DialogueTextBox")!)
    }
  
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
    }
    
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
    }
      
}

extension UILabel{
    func circleBorder(){
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
    }
}

extension UIButton{
    func circleBord(){
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
    }
}
