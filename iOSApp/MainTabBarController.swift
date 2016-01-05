//
//  MainTabBarController.swift
//  TEDxBerkeley
//
//  Created by alvinwan on 1/4/16.
//  Copyright (c) 2016 TExBerkeley. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        self.tabBar.tintColor = UIColor.whiteColor()
        
        // change default text color
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)], forState: .Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.whiteColor()], forState: .Selected)
        
        // change default image tint
        for item in self.tabBar.items! {
            if let image = item.image {
                item.image = image.imageWithColor(UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)).imageWithRenderingMode(.AlwaysOriginal)
            }
        }
    }
}

extension UIImage {
    // written by "gotnull" on StackOverflow
    // http://stackoverflow.com/questions/19274789/how-can-i-change-image-tintcolor-in-ios-and-watchkit/24545102#24545102

    func imageWithColor(tintColor: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        
        let context = UIGraphicsGetCurrentContext()! as CGContextRef
        CGContextTranslateCTM(context, 0, self.size.height)
        CGContextScaleCTM(context, 1.0, -1.0);
        CGContextSetBlendMode(context, CGBlendMode.Normal)
        
        let rect = CGRectMake(0, 0, self.size.width, self.size.height) as CGRect
        CGContextClipToMask(context, rect, self.CGImage)
        tintColor.setFill()
        CGContextFillRect(context, rect)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext() as UIImage
        UIGraphicsEndImageContext()
        
        return newImage
    }
}