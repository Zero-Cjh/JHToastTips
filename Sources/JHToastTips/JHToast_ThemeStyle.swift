//
//  JHToastTips_ThemeStyle.swift
//  JHToastTips
//
//  Created by Junhong on 2022/8/25.
//  Copyright © 2022 JHToastTips. All rights reserved.
//

import Foundation
import UIKit

@objc extension JHToast {
    
    /// 持续时间
    ///
    /// Default: 2
    /// 如果设置为0，需手动释放
    static public var durationTime: Int {
        get {
            return JHToast_Durationtime
        }
        set {
            JHToast_Durationtime = newValue
        }
    }
    
    /// 字体样式
    ///
    /// Default: size: 18
    static public var font: UIFont {
        get {
            return JHToast_Font
        }
        set {
            JHToast_Font = newValue
            JHToastManager.font = newValue
        }
    }
    
    /// 字体颜色
    ///
    /// Default: .black
    static public var msgColor: UIColor {
        get {
            return JHToast_MsgColor
        }
        set {
            JHToast_MsgColor = newValue
            JHToastManager.msgColor = newValue
        }
    }
    
    /// 背景色
    ///
    /// Deafult: .black
    /// 因后面有一层磨砂层，所以颜色会有所变化
    static public var backgroundColor: UIColor {
        get {
            return JHToast_BackgroundColor
        }
        set {
            JHToast_BackgroundColor = newValue
            JHToastManager.backgroundColor = newValue
        }
    }
}

private var JHToast_Durationtime: Int = 2
private var JHToast_Font: UIFont = .systemFont(ofSize: 18)
private var JHToast_MsgColor: UIColor = .black
private var JHToast_BackgroundColor: UIColor = .black
