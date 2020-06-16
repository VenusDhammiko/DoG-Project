//
//  courtScene7.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 15/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class courtScene7: UIViewController {

    @IBOutlet weak var setting: UIView!
            
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Scene6-8,17.png")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
              
    }
            
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
    }
            
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
    }


}
