//
//  InputTextField.swift
//  BetaUI
//
//  Created by Szabolcs Tóth on 2021. 08. 10..
//

import SwiftUI

public struct BUIInputTextField: View {
    
    @Binding var text: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    let sfSymbol: String?
    var textLeading: CGFloat = 30
    
    public init(text: Binding<String>, placeholder: String, keyboardType: UIKeyboardType, sfSymbol: String?, textLeading: CGFloat) {
        self._text = text
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        self.sfSymbol = sfSymbol
        self.textLeading = textLeading
    }
        
    public var body: some View {
        TextField(placeholder, text: $text)
            .foregroundColor(.bUIInputTextFieldColor)
            .frame(maxWidth: .infinity, minHeight: 44)
            .padding(.leading, sfSymbol == nil ? textLeading / 2 : textLeading)
            .autocapitalization(keyboardType == .default ? .words : .none)
            .keyboardType(keyboardType)
            .background(
                ZStack(alignment: .leading) {
                    if let systemImage = sfSymbol {
                        Image(systemName: systemImage)
                            .foregroundColor(checkIfTextFieldIsEmpty(text: text) ? Color.gray : .bUIInputTextFieldColor)
                            .opacity(checkIfTextFieldIsEmpty(text: text) ? 0.3 : 1)
                            .padding(.horizontal, 5)
                    }
                    
                    BUIInputTextFieldBorder()
                }
            )
    }
}
