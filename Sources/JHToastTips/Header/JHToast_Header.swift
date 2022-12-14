//
//  JHToastTips_Header.swift
//  JHToastTips
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToastTips. All rights reserved.
//

import UIKit

class JHToastHeader {
    static var rootView: UIView? {
        guard let rootWindow: UIWindow = UIApplication.shared.delegate?.window as? UIWindow,
              let rootView = rootWindow.rootViewController?.view as? UIView
        else {
            return nil
        }
        return rootView
    }
}
