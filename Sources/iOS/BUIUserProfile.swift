//
//  BUIUserProfileViewRepresantable.swift
//  TestMe
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import SwiftUI

public struct BUIUserProfile: UIViewRepresentable {
    public typealias UIViewType = BUIUserProfileDrawView
    
    
    public func makeUIView(context: Context) -> BUIUserProfileDrawView {
        return BUIUserProfileDrawView()
    }
    
    public func updateUIView(_ uiView: BUIUserProfileDrawView, context: Context) {
        
    }
    
    
}
