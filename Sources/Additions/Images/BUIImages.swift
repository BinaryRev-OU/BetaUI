//
//  BUIImages.swift
//  
//
//  Created by Szabolcs Tóth on 2022. 01. 12..
//

import SwiftUI

public struct BUILogoImage: View {
    
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    
    public init(imageWidth: CGFloat = 150, imageHeight: CGFloat = 150) {
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
    }
    
    public var body: some View {
        Image(uiImage: UIImage(named: "kLogoImage", in: .module, with: nil)!)
            .resizable()
            .scaledToFit()
            .frame(width: imageWidth, height: imageHeight)
    }
}

public struct BUIUserImage: View {
    
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    
    public init(imageWidth: CGFloat = 30, imageHeight: CGFloat = 30) {
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
    }
    
    public var body: some View {
        Image(uiImage: UIImage(named: "kUserImage", in: .module, with: nil)!)
            .resizable()
            .scaledToFit()
            .frame(width: imageWidth, height: imageHeight)
    }
}

struct BUIImages_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BUILogoImage()
                .preview(with: "Logo image")
            BUIUserImage()
                .preview(with: "User image")
        }
    }
}
