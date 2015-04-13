//
//  PixelButtonViewCell.swift
//  LedMatrix
//
//  Created by Alexander Kasimir on 13/04/15.
//  Copyright (c) 2015 Alexander Kasimir. All rights reserved.
//

import UIKit

class PixelButtonViewCell: UICollectionViewCell {
    
    var name:String = ""
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    // draw rounded edges in white over the imageview
    override func drawRect(rect: CGRect) {
        super.drawRect(rect);
        
        // paintcode stuff
        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(64, 0))
        bezierPath.addCurveToPoint(CGPointMake(64, 6.11), controlPoint1: CGPointMake(64, 0), controlPoint2: CGPointMake(64, 2.34))
        bezierPath.addCurveToPoint(CGPointMake(63.7, 2.53), controlPoint1: CGPointMake(64, 4.35), controlPoint2: CGPointMake(64, 3.47))
        bezierPath.addCurveToPoint(CGPointMake(61.47, 0.3), controlPoint1: CGPointMake(63.32, 1.49), controlPoint2: CGPointMake(62.51, 0.68))
        bezierPath.addLineToPoint(CGPointMake(61.32, 0.26))
        bezierPath.addCurveToPoint(CGPointMake(57.89, 0), controlPoint1: CGPointMake(60.53, -0), controlPoint2: CGPointMake(59.65, 0))
        bezierPath.addLineToPoint(CGPointMake(64, 0))
        bezierPath.addLineToPoint(CGPointMake(64, 0))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(6.1, 0))
        bezierPath.addCurveToPoint(CGPointMake(2.53, 0.3), controlPoint1: CGPointMake(4.35, 0), controlPoint2: CGPointMake(3.47, 0))
        bezierPath.addCurveToPoint(CGPointMake(0.3, 2.53), controlPoint1: CGPointMake(1.49, 0.68), controlPoint2: CGPointMake(0.68, 1.49))
        bezierPath.addLineToPoint(CGPointMake(0.26, 2.68))
        bezierPath.addCurveToPoint(CGPointMake(0, 6.11), controlPoint1: CGPointMake(-0, 3.47), controlPoint2: CGPointMake(0, 4.35))
        bezierPath.addCurveToPoint(CGPointMake(0, 0), controlPoint1: CGPointMake(0, 2.34), controlPoint2: CGPointMake(0, 0))
        bezierPath.addLineToPoint(CGPointMake(6.11, 0))
        bezierPath.addLineToPoint(CGPointMake(6.1, 0))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(64, 57.89))
        bezierPath.addCurveToPoint(CGPointMake(64, 64), controlPoint1: CGPointMake(64, 61.66), controlPoint2: CGPointMake(64, 64))
        bezierPath.addLineToPoint(CGPointMake(57.89, 64))
        bezierPath.addCurveToPoint(CGPointMake(61.47, 63.7), controlPoint1: CGPointMake(59.65, 64), controlPoint2: CGPointMake(60.53, 64))
        bezierPath.addCurveToPoint(CGPointMake(63.7, 61.47), controlPoint1: CGPointMake(62.51, 63.32), controlPoint2: CGPointMake(63.32, 62.51))
        bezierPath.addLineToPoint(CGPointMake(63.74, 61.32))
        bezierPath.addCurveToPoint(CGPointMake(64, 57.89), controlPoint1: CGPointMake(64, 60.53), controlPoint2: CGPointMake(64, 59.65))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(0.3, 61.47))
        bezierPath.addCurveToPoint(CGPointMake(2.53, 63.7), controlPoint1: CGPointMake(0.68, 62.51), controlPoint2: CGPointMake(1.49, 63.32))
        bezierPath.addLineToPoint(CGPointMake(2.68, 63.74))
        bezierPath.addCurveToPoint(CGPointMake(6.11, 64), controlPoint1: CGPointMake(3.47, 64), controlPoint2: CGPointMake(4.35, 64))
        bezierPath.addLineToPoint(CGPointMake(0, 64))
        bezierPath.addCurveToPoint(CGPointMake(0, 57.89), controlPoint1: CGPointMake(0, 64), controlPoint2: CGPointMake(0, 61.66))
        bezierPath.addCurveToPoint(CGPointMake(0.3, 61.47), controlPoint1: CGPointMake(0, 59.65), controlPoint2: CGPointMake(0, 60.53))
        bezierPath.closePath()
        UIColor.whiteColor().setFill()
        bezierPath.fill()
                
    }
}
