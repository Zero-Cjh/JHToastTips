//
//  JHToastTips_MainView_Method.swift
//  JHToastTips
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToastTips. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

extension JHToastMainView {
    
    func show(_ position: JHToastPosition, rootView: UIView? = nil) {
        guard let rootView: UIView = rootView ?? JHToastHeader.rootView else {
            return
        }
        rootView.addSubview(self)
        switch position {
        case .center:
            self.snp.remakeConstraints { make in
                make.center.equalTo(rootView)
            }
        case .top:
            self.snp.remakeConstraints { make in
                make.centerX.equalTo(rootView)
                make.centerY.equalTo(rootView.snp.top).offset(rootView.bounds.height/4)
            }
        case .left:
            self.snp.remakeConstraints { make in
                make.centerX.equalTo(rootView.snp.left).offset(rootView.bounds.width/4)
                make.centerY.equalTo(rootView)
            }
        case .right:
            self.snp.remakeConstraints { make in
                make.centerX.equalTo(rootView.snp.right).offset(-rootView.bounds.width/4)
                make.centerY.equalTo(rootView)
            }
        case .bottom:
            self.snp.remakeConstraints { make in
                make.centerX.equalTo(rootView)
                make.centerY.equalTo(rootView.snp.bottom).offset(-rootView.bounds.height/4)
            }
        }
        self.alpha = 0
        self.setNeedsLayout()
        self.layoutIfNeeded()
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
    func remove(_ completion: ((_ finished: Bool) -> ())? = nil) {
        UIView.animate(withDuration: 0.25) {
            self.alpha = 0
            self.setNeedsLayout()
            self.layoutIfNeeded()
        } completion: { finished in
            completion?(finished)
        }
    }
    
    var msgString: String? {
        get {
            return self.msgLabel.text
        }
        set {
            self.msgLabel.text = newValue
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
}
