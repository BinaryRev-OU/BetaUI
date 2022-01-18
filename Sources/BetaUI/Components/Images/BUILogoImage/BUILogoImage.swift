//
//  BUILogoImage.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 18..
//

import SwiftUI

public struct BUILogoImage: UIViewRepresentable {
    
    public typealias UIViewType = BUILogoImageDrawView
        
    public init() {}
    
    public func makeUIView(context: Context) -> BUILogoImageDrawView {
        return BUILogoImageDrawView()
    }
    
    public func updateUIView(_ uiView: BUILogoImageDrawView, context: Context) {
        
    }
}

