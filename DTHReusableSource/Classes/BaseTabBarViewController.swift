//
//  BaseTabBarViewController.swift
//  DTHReusableSource
//
//  Created by DuongTo on 5/14/21.
//  Copyright © 2021 https://duongth.dev. All rights reserved.
//

import UIKit

public class BaseTabBarViewController: UITabBarController {
    @IBInspectable var hiddenTabbar: Bool = true
    @IBInspectable var hiddenNavigationView: Bool = true
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        configTabbar()
        // Do any additional setup after loading the view.
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configNavigationController(self.navigationController, animated: animated)
        configMoreNavigationController(self.navigationController, animated: animated)
    }
    
    public override var moreNavigationController: UINavigationController {
        let nav = super.moreNavigationController
        nav.setNavigationBarHidden(hiddenNavigationView, animated: false)
        return nav
    }
    
    //MARK:- Config
    
    private func configNavigationController(_ navigationController: UINavigationController?, animated: Bool) {
        navigationController?.setNavigationBarHidden(hiddenNavigationView, animated: animated)
    }
    
    private func configMoreNavigationController(_ navigationController: UINavigationController?, animated: Bool) {
        navigationController?.setNavigationBarHidden(hiddenNavigationView, animated: animated)
    }
    
    private func configTabbar() {
        tabBar.isHidden = hiddenTabbar
        hidesBottomBarWhenPushed = hiddenTabbar
    }
}

