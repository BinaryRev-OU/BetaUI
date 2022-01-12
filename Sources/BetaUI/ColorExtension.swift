//
//  ColorExtension.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 12..
//

import SwiftUI

public extension Color {
    
    //MARK: Font colors
    static let bUIHeaderTextColor = Color("kMainColor1", bundle: .module)
    static let bUIBodyTextColor = Color("kMainColor1", bundle: .module)
    static let bUIFootnoteTextColor = Color("kMainColor2", bundle: .module)
    static let bUIInputTextFieldColor = Color("kMainColor1", bundle: .module)
    static let bUISecureTextFieldColor = Color("kMainColor1", bundle: .module)
    
    //MARK: Border colors
    static let bUIBorderColor = LinearGradient(colors: [Color("kMainColor1", bundle: .module), Color("kMainColor2", bundle: .module)], startPoint: .topLeading, endPoint: .bottomTrailing)
    
    //MARK: Button colors
    static let bUIButtonBaseColor1 = Color("kMainColor1", bundle: .module)
    static let bUIButtonBaseColor2 = Color("kMainColor2", bundle: .module)
    static let bUIButtonBaseColor3 = Color("kMainColor3", bundle: .module)
    static let bUIButtonTextColor = Color("kMainColor4", bundle: .module)
    static let bUIInverseButtonTextColor = Color("kMainColor1", bundle: .module)
    
    // Converting hex string to Color
    // https://stackoverflow.com/questions/24263007/how-to-use-hex-color-values/24263296
    // by Thomas Paul (https://stackoverflow.com/users/5235481/thomas-paul)
    
    /// Usage: ```Color(hexString: "your_hex_string")```
    init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count {
        case 3:
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (r, g, b) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (255, 0, 0)
        }
        self.init(red: Double(CGFloat(r)) / 255, green: Double(CGFloat(g)) / 255, blue: Double(CGFloat(b)) / 255)
    }
}
