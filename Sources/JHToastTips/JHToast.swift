//
//  JHToast.swift
//  JHToast
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToast. All rights reserved.
//

import UIKit

/// 快捷单例
public let JHToastManager = JHToast.Manager

public class JHToast {
    
    /// 单例
    public static let `Manager` = JHToast.init()
    
    /// 持续时间
    ///
    /// Default: 2s
    /// 如果设置为0，则持续存在，需手动释放
    public var durationTime: Int = 2
    
    /// 计时器
    var timer: Timer = Timer()
    
    /// Toast视图
    let mainView: JHToastMainView = JHToastMainView.init()
    
    init() {
        self.backgroundColor = .black
        self.font = UIFont.systemFont(ofSize: 18)
        self.msgColor = .black
        self.backgroundColor = .gray
    }
}

public enum JHToastPosition {
    case center
    case top
    case left
    case right
    case bottom
}
