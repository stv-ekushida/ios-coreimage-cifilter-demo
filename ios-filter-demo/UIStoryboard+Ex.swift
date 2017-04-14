//
//  UIStoryboard+Ex.swift
//  ios-filter-demo
//
//  Created by Eiji Kushida on 2017/04/14.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

public extension UIStoryboard {

    class func viewController<T: UIViewController>(storyboardName: String,
                              identifier: String) -> T? {

        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(
            withIdentifier: identifier) as? T
    }
}
