//
//  JHToast_Font.swift
//  JHToast
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToast. All rights reserved.
//

import Foundation
import UIKit

extension JHToast {
    
    /// 字体样式
    ///
    /// Default: size: 18
    var font: UIFont? {
        get {
            return self.mainView.msgLabel.font
        }
        set {
            self.mainView.msgLabel.font = newValue
        }
    }
}
