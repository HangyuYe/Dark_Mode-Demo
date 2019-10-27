//
//  DarkModeColor.swift
//  Dark_Mode Demo
//
//  Created by Jerry on 2019/10/27.
//  Copyright © 2019 Creatisan LLC. All rights reserved.
//

import UIKit

let backGroundColor = UIColor { (traitCollection) -> UIColor in
    if traitCollection.userInterfaceStyle == .dark {
        return #colorLiteral(red: 0.09641346418, green: 0.09757507218, blue: 0.09757507218, alpha: 1)
    } else {
        return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}

let textLableColor = UIColor { (traitCollection) -> UIColor in
    if traitCollection.userInterfaceStyle == .dark {
        return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    } else {
        return #colorLiteral(red: 0.05731865285, green: 0.05731865285, blue: 0.05731865285, alpha: 1)
    }
}

let mainView = UIColor { (traitCollection) -> UIColor in
    if traitCollection.userInterfaceStyle == .dark {
        return #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
    } else {
        return .systemOrange
    }
}
