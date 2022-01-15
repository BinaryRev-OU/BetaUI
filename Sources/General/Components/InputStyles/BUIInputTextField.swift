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
    var textLeading: CGFloat
    
    public init(text: Binding<String>, placeholder: String, keyboardType: UIKeyboardType, sfSymbol: String?, textLeading: CGFloat = 30) {
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

struct BUIInputTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            BUIInputTextField(text: .constant(""), placeholder: "First name", keyboardType: .namePhonePad, sfSymbol: nil)
                .preview(with: "TextField with icon")
            
            BUIInputTextField(text: .constant(""), placeholder: "E-mail address", keyboardType: .emailAddress, sfSymbol: "envelope")
                .preview(with: "TextField with icon")
        }
    }
}
