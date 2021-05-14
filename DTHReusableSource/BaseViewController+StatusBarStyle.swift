//
//  BaseViewController+StatusBarStyle.swift
//  DTHReusableSource
//
//  Created by DuongTo on 5/14/21.
//  Copyright © 2021 https://duongth.dev. All rights reserved.
//

import UIKit


extension UITabBarController {
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return selectedViewController?.childViewControllerForStatusBarStyle ?? selectedViewController
    }
    open override var childViewControllerForStatusBarHidden: UIViewController? {
        return selectedViewController?.childViewControllerForStatusBarHidden ?? selectedViewController
    }
    
    open override var shouldAutorotate: Bool {
        return selectedViewController?.shouldAutorotate ?? super.shouldAutorotate
    }
}

extension UINavigationController {
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return topViewController?.childViewControllerForStatusBarStyle ?? topViewController
    }
    open override var childViewControllerForStatusBarHidden: UIViewController? {
        return topViewController?.childViewControllerForStatusBarHidden ?? topViewController
    }
    
    open override var shouldAutorotate: Bool {
        return topViewController?.shouldAutorotate ?? super.shouldAutorotate
    }
}
