//
//  JHToastTips_MainView.swift
//  JHToastTips
//
//  Created by Junhong on 2022/8/19.
//  Copyright © 2022 JHToastTips. All rights reserved.
//

import Foundation
import UIKit

class JHToastMainView: UIView {
    
    func configUI() {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        self.addSubview(self.blurEffect)
        self.addSubview(self.msgLabel)
        self.blurEffect.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        self.msgLabel.snp.makeConstraints { make in
            make.top.equalTo(self).offset(self.paddingY)
            make.left.equalTo(self).offset(self.paddingX)
            make.right.equalTo(self).offset(-self.paddingX)
            make.bottom.equalTo(self).offset(-self.paddingY)
        }
    }
    
    var paddingX: Int = 17
    var paddingY: Int = 12
    
    lazy var blurEffect: UIVisualEffectView = {
        blurEffect = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
        return blurEffect
    }()
    
    lazy var msgLabel: UILabel = {
        msgLabel = UILabel()
        return msgLabel
    }()
    
    init() {
        super.init(frame: CGRect())
        self.configUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
