//
//  GradientView.swift
//  University
//
//  Created by Xpertcube on 25/07/17.
//  Copyright © 2017 AppyMomentsApps. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor:UIColor = UIColor.clear{
        didSet{
            drawGradient()
        }
    }
    @IBInspectable var bottomColor:UIColor = UIColor.clear{
        didSet{
            drawGradient()
        }
    }
    
    override class var layerClass:AnyClass{
        get{
            return CAGradientLayer.self
        }
    }
    
    func drawGradient(){
        let layer = self.layer as! CAGradientLayer
        layer.colors = [topColor.cgColor,bottomColor.cgColor]
    }
}
