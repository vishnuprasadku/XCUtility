//
//  Extensions.swift
//  University
//
//  Created by Xpertcube on 25/07/17.
//  Copyright © 2017 VishnuPrasad. All rights reserved.
//

import Foundation
import UIKit

//MARK: - UIViewExtension

@IBDesignable
class XCUIView:UIView{
    
    @IBInspectable var cornerRadius:CGFloat = 0.0{
        didSet{
            layer.cornerRadius = cornerRadius
            clipsToBounds = cornerRadius != 0
        }
    }
    
    @IBInspectable var borderColor:UIColor = UIColor.clear{
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = 0.0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
}
