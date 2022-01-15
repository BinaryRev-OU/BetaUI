//
//  File.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 15..
//

#if !os(iOS)
import Cocoa

public class BUIUserProfileDrawView: NSView {
    
    public init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    public override func draw(_ dirtyRect: NSRect) {
        BUIImagesmacOSCode.drawBUIUserProfileImage()
    }
}
#endif
