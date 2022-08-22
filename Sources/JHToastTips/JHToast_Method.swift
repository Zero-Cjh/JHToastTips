//
//  JHToast_Method.swift
//  JHToast
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToast. All rights reserved.
//

import Foundation
import UIKit

extension JHToast {
    
    // MARK: - Public
    
    /// 显示Toast
    /// - Parameters:
    ///   - msg: 提示信息
    ///   - inView: 指定窗口，默认全屏
    ///   - durationTime: 持续时间，默认使用全局变量，如设置为0，需手动释放
    ///   - position: 显示位置， 默认center
    public func show(_ msg: String,
                     inView: UIView? = nil,
                     durationTime: Int? = nil,
                     position: JHToastPosition = .center) {
        self.remove { finished in
            self.mainView.msgString = msg
            self.mainView.show(position, rootView: inView)
            self.scheduledTime(durationTime)
        }
    }
    
    /// 移除Toast
    /// - Parameter completion: 动画结束回调
    public func remove(_ completion: ((_ finished: Bool) -> ())? = nil) {
        self.timer.invalidate()
        self.mainView.remove { finished in
            completion?(finished)
        }
    }
    
    // MARK: - Private
    
    private func scheduledTime(_ durationTime: Int?) {
        if let durationTime = durationTime,
           durationTime == 0 {
            return
        }
        if (self.durationTime == 0) {
            return
        }
        self.timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(durationTime ?? self.durationTime), repeats: false) { _ in
            self.mainView.remove()
        }
    }
}
