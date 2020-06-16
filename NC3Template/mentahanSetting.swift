//
//  mentahanSetting.swift
//  NC3Template
//
//  Created by Venus Dhammiko on 14/06/20.
//  Copyright © 2020 Venus Dhammiko. All rights reserved.
//

import UIKit

class mentahanSetting: UIViewController {

    @IBOutlet weak var setting: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setting.backgroundColor = UIColor(patternImage: UIImage(named: "BlankSettingsMenu")!)
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        setting.isHidden = true
    }
    
    @IBAction func settingBtn(_ sender: Any) {
        setting.isHidden = false
    }
}
