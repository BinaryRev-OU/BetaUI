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
        return BUIUserProfileImageDrawView()
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        // We don't use it.
    }
    
}
