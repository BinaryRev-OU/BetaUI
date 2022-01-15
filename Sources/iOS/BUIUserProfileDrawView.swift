//
//  BUIUserProfileDrawView.swift
//  TestMe
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import UIKit

class BUIUserProfileDrawView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func draw(_ rect: CGRect) {
        backgroundColor = .clear
        BUIImagesiOSCode.drawBUIUserProfileImage(frame: rect, resizing: .aspectFit)
    }
}
