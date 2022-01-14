//
//  BUIUserProfileImageView.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import UIKit

public class BUIUserProfileImageDrawView: UIView {
    
    public init() {}
    
    public override func draw(_ rect: CGRect) {
        BUIImagesCode.drawBUIUserProfileImage()
    }
    
}
