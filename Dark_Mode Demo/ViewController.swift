//
//  ViewController.swift
//  Dark_Mode Demo
//
//  Created by Jerry on 2019/10/25.
//  Copyright © 2019 Creatisan LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var someView: UIView!
    @IBOutlet weak var someText: UILabel!
    
    var mode = "normal"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = backGroundColor
        someText.textColor = textLableColor
        someView.backgroundColor = mainView
    }
    
    //Use monitor current appearance
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            if traitCollection.userInterfaceStyle == .dark {
                mode = "dark"
                print("Current mode is: \(mode)")
            } else {
                mode = "light"
                print("Current mode is: \(mode)")
            }
        }
    }

}

