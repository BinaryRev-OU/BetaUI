//
//  BUIUserProfileImageViewRepresentable.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import Foundation
import SwiftUI


public struct BUIUserProfileImageViewRepresentable: UIViewRepresentable {
    
    public init() {}
    
    public typealias UIViewType = BUIUserProfileImageDrawView
    
    public func makeUIView(context: Context) -> BUIUserProfileImageDrawView {
        return BUIUserProfileImageDrawView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        // We don't use it.
    }
    
}
