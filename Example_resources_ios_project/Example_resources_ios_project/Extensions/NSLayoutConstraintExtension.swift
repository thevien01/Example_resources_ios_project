//
//  NSLayoutConstraintExtension.swift
//  Example_resources_ios_project
//
//  Created by DKHT on 7/10/18.
//  Copyright © 2018 DKHT. All rights reserved.
//

import Foundation
extension NSLayoutConstraint{
    @IBInspectable var iPhoneXConstant: CGFloat{
        set{
            if DeviceTypes.isIPhoneX(){
                self.constant = newValue
            }
        }get{
            return self.iPhoneXConstant
        }
    }
}
