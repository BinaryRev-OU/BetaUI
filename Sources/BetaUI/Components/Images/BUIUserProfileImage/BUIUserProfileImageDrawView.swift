//
//  BUIUserProfileImageView.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import UIKit

public class BUIUserProfileImageDrawView: UIView {
    
    override init(frame: CGRect) {
      super.init(frame: frame)
    }

    required init(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)!
    }
    
    public override func draw(_ rect: CGRect) {
        BUIImagesCode.drawBUIUserProfileImage(frame: rect, resizing: .aspectFit)
    }
    
}
