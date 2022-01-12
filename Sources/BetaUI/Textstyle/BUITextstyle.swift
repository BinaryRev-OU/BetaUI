//
//  Textstyle.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

public struct BUIHeaderTextStyle: ViewModifier {
    
    public init() {}
    
    public func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundColor(.bUIHeaderTextColor)
    }
}

public struct BUIBodyTextStyle: ViewModifier {
    
    public init() {}
    
    public func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.bUIBodyTextColor)
    }
}

public struct BUIFootnoteTextStyle: ViewModifier {
    
    public init() {}
    
    public func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(.bUIFootnoteTextColor)
    }
}
