//
//  JHToast_Color.swift
//  JHToast
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToast. All rights reserved.
//

import Foundation
import UIKit

extension JHToast {
    
    /// 字体颜色
    ///
    /// Default: .black
    var msgColor: UIColor? {
        get {
            return self.mainView.msgLabel.textColor
        }
        set {
            self.mainView.msgLabel.textColor = newValue
        }
    }
    
    /// 背景色
    ///
    /// Deafult: .black
    /// 因后面有一层磨砂层，所以颜色会有所变化
    var backgroundColor: UIColor? {
        get {
            return self.mainView.backgroundColor
        }
        set {
            self.mainView.backgroundColor = newValue
        }
    }
}
