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
    
    var mode = "normal"
    
    let backGroundColor = UIColor { (trainCollection) -> UIColor in
        if trainCollection.userInterfaceStyle == .dark {
            return UIColor.black
        } else {
            return UIColor.white
        }
    }
    
    let labelColor = UIColor { (trainCollection) -> UIColor in
        if trainCollection.userInterfaceStyle == .dark {
            return .black
        } else {
            return .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Use monitor current appearance
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            if traitCollection.userInterfaceStyle == .dark {
                someView.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
            } else {
                someView.backgroundColor = .systemOrange
            }
        }
    }

}

