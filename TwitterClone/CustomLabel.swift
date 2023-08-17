//
//  CustomLabel.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 17.08.23.
//

import UIKit

class CustomLabel: UILabel {
    
    init(text: String,
         textColor: UIColor? = .white,
         hexcode: String? = nil,
         size: CGFloat? = nil,
         font: String = "Chirp",
         systemFont: UIFont? = nil,
         alignment: NSTextAlignment = .center,
         numberOfLines: Int = 1)
    {
        super.init(frame: .zero)
        
        if let hexcode = hexcode{
            self.textColor = UIColor(named: hexcode)
        } else {
            self.textColor = textColor
        }
        
        if let systemFont = systemFont {
            self.font = systemFont
        } else {
            self.font = UIFont(name: font, size: size ?? CGFloat(1))
        }
        
        self.text = text
        
        textAlignment = alignment
        self.numberOfLines = numberOfLines
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
