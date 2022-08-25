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

@objc public class JHToast: NSObject {
    
    // MARK: - Public
    
    /// 单例
    @objc public static let `Manager` = JHToast.init()
    
    /// 字体样式
    @objc public var font: UIFont? {
        get {
            return self.mainView.msgLabel.font
        }
        set {
            self.mainView.msgLabel.font = newValue
        }
    }
    
    /// 字体颜色
    @objc public var msgColor: UIColor? {
        get {
            return self.mainView.msgLabel.textColor
        }
        set {
            self.mainView.msgLabel.textColor = newValue
        }
    }
    
    /// 背景色
    @objc public var backgroundColor: UIColor? {
        get {
            return self.mainView.backgroundColor
        }
        set {
            self.mainView.backgroundColor = newValue
        }
    }
    
    /// 显示Toast
    /// - Parameters:
    ///   - msg: 提示信息
    ///   - inView: 指定窗口，默认全屏
    ///   - durationTime: 持续时间，默认使用全局变量，如设置为0，需手动释放
    ///   - position: 显示位置， 默认center
    @objc public func show(_ msg: String,
                     inView: UIView? = nil,
                     durationTime: Int = JHToast.durationTime,
                     position: JHToastPosition = .center) {
        self.remove { finished in
            self.timer.invalidate()
            self.mainView.msgString = msg
            self.mainView.show(position, rootView: inView)
            self.scheduledTime(durationTime)
        }
    }
    
    /// 移除Toast
    /// - Parameter completion: 动画结束回调
    @objc public func remove(_ completion: ((_ finished: Bool) -> ())? = nil) {
        self.timer.invalidate()
        self.mainView.remove { finished in
            completion?(finished)
        }
    }
    
    // MARK: - Private
    
    private func scheduledTime(_ durationTime: Int) {
        guard durationTime != 0 else {
            return
        }
        self.timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(durationTime), repeats: false) { _ in
            self.mainView.remove()
        }
    }
    /// 计时器
    var timer: Timer = Timer()
    
    /// Toast视图
    let mainView: JHToastMainView = JHToastMainView.init()
    
    override init() {
        super.init()
        self.backgroundColor = .black
        self.font = UIFont.systemFont(ofSize: 18)
        self.msgColor = .black
        self.backgroundColor = .gray
    }
}

@objc public enum JHToastPosition: NSInteger {
    case center
    case top
    case left
    case right
    case bottom
}
