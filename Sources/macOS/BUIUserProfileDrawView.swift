//
//  File.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 15..
//

#if !os(iOS)
import Cocoa
import CoreGraphics

public class BUIUserProfileDrawView: NSView {
    
    public var imageWidth: CGFloat
    public var imageHeight: CGFloat
    
    public init(imageWidth: CGFloat, imageHeight: CGFloat) {
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
        super.init(frame: .zero)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    public override func draw(_ dirtyRect: NSRect) {
        BUIImagesmacOSCode.drawBUIUserProfileImage(frame: CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight))
    }
}
#endif
