//
//  TextFieldBorder.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

// Common border for all input field with gradient border
public struct BUIInputTextFieldBorder: View {
    
    public init() {}
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 4, style: .continuous)
            .stroke(Color.bUIBorderColor, lineWidth: 1)
    }
}
