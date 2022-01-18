//
//  BUIUserProfileDrawView.swift
//  TestMe
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import UIKit

public class BUIUserProfileDrawView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func draw(_ rect: CGRect) {
        backgroundColor = .clear
        BUIImagesiOSCode.drawBUIUserProfileImage(frame: frame, resizing: .aspectFit)
    }
}
