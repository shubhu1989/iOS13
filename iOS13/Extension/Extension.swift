//
//  Extension.swift
//  iOS13
//
//  Created by CitySpidey on 7/22/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
//    class func instantiateFromStoryboard(_ name:String) -> Self {
//        return instantiateFromStoryboardHelper(name)
//    }
    
//    fileprivate class func instantiateFromStoryboardHelper<T>(_ name:String) -> T{
//        let storyboard = UIStoryboard(name: name, bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "\(Self.self)") as! T
//        return controller
//    }
    
    class func instantiateFromStoryboardHelper(_ name:String) -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "\(name)")
        return controller as! Self
    }
}
