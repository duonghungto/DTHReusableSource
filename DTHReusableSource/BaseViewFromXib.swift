//
//  BaseViewFromXib.swift
//  DTHReusableSource
//
//  Created by DuongTo on 5/14/21.
//  Copyright © 2021 https://duongth.dev. All rights reserved.
//

import UIKit

public class BaseViewFromXib: BaseView {
    @IBOutlet private (set) weak var contentView: UIView!
    
    private func initSubviews() {
        Bundle.main.loadNibNamed(Self.nibName, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.backgroundColor = .clear
    }
    
    private static var nibName: String {
        return String(describing: self)
    }
    
    open override func configSubviews() {
        super.configSubviews()
        initSubviews()
    }
}
