//
//  File.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 15..
//

#if !os(iOS)
import Cocoa

class BUIUserProfileDrawView: NSView {
    
    init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func draw(_ dirtyRect: NSRect) {
        BUIImagesmacOSCode.drawBUIUserProfileImage()
    }
}
#endif
