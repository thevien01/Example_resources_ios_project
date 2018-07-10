//
//  UIApplication+Devices.swift
//  Example_resources_ios_project
//
//  Created by DKHT on 6/20/18.
//  Copyright © 2018 DKHT. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication{
    
//    Check version
//    Usage:
//    if iOS_VERSION_GREATER_THAN_OR_EQUAL_TO(version: "11.0") {
//    Do something!
//    }

    static func iOS_VERSION_EQUAL_TO(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: NSString.CompareOptions.numeric) == ComparisonResult.orderedSame
    }
    
    static func iOS_VERSION_GREATER_THAN(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: NSString.CompareOptions.numeric) == ComparisonResult.orderedDescending
    }
    
    static func iOS_VERSION_GREATER_THAN_OR_EQUAL_TO(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: NSString.CompareOptions.numeric) != ComparisonResult.orderedAscending
    }
    
    static func iOS_VERSION_LESS_THAN(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: NSString.CompareOptions.numeric) == ComparisonResult.orderedAscending
    }
    
    static func iOS_VERSION_LESS_THAN_OR_EQUAL_TO(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: NSString.CompareOptions.numeric) != ComparisonResult.orderedDescending
    }

    static func isIphoneX()-> Bool{
        if UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.nativeBounds.size.height == 2436{
            return true
        }
        return false
    }
}
