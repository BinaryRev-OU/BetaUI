//
//  BUILogoImageDrawView.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 18..
//

import UIKit

public class BUILogoImageDrawView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func draw(_ rect: CGRect) {
        backgroundColor = .clear
        BUIImagesiOSCode.drawBUILogoImage(frame: frame)
    }
}
