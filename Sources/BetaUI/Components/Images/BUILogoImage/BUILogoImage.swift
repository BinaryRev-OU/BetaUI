//
//  BUILogoImage.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 18..
//

import SwiftUI

public struct BUILogoImage: UIViewRepresentable {
    
    public typealias UIViewType = BUILogoImageDrawView
    
    public var imageWidth: CGFloat
    public var imageHeight: CGFloat
    
    public init(imageWidht: CGFloat, imageHeight: CGFloat) {
        self.imageWidth = imageWidht
        self.imageHeight = imageHeight
    }
    
    public func makeUIView(context: Context) -> BUILogoImageDrawView {
        return BUILogoImageDrawView(imageWidth: imageWidth, imageHeight: imageHeight)
    }
    
    public func updateUIView(_ uiView: BUILogoImageDrawView, context: Context) {
        
    }
}

