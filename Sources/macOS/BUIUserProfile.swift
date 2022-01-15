//
//  BUIUserProfile.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 15..
//

#if !os(iOS)
import SwiftUI

public struct BUIUserProfile: NSViewRepresentable {
    
    public typealias NSViewType = BUIUserProfileDrawView
    
    public func makeNSView(context: Context) -> PressureDrawView {
        return BUIUserProfileDrawView()
    }
    
    // We don't use this method.
    public func updateNSView(_ nsView: BUIUserProfileDrawView, context: Context) {}
}
#endif
