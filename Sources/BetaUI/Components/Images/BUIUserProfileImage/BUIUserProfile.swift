//
//  BUIUserProfileViewRepresantable.swift
//  TestMe
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import SwiftUI

public struct BUIUserProfile: UIViewRepresentable {
    
    public typealias UIViewType = BUIUserProfileDrawView
    
    public var imageWidth: CGFloat
    public var imageHeight: CGFloat
    
    public init(imageWidht: CGFloat, imageHeight: CGFloat) {
        self.imageWidth = imageWidht
        self.imageHeight = imageHeight
    }
    
    public func makeUIView(context: Context) -> BUIUserProfileDrawView {
        return BUIUserProfileDrawView(imageWidth: imageWidth, imageHeight: imageHeight)
    }
    
    public func updateUIView(_ uiView: BUIUserProfileDrawView, context: Context) {
        
    }
}
