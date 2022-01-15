//
//  BUIUserProfileViewRepresantable.swift
//  TestMe
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import Foundation
import SwiftUI

struct BUIUserProfile: UIViewRepresentable {
    typealias UIViewType = BUIUserProfileDrawView
    
    
    func makeUIView(context: Context) -> BUIUserProfileDrawView {
        return BUIUserProfileDrawView()
    }
    
    func updateUIView(_ uiView: BUIUserProfileDrawView, context: Context) {
        
    }
    
    
}
