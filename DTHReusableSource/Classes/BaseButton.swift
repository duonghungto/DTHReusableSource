//
//  BaseButton.swift
//  DTHReusableSource
//
//  Created by DuongTo on 5/14/21.
//  Copyright © 2021 https://duongth.dev. All rights reserved.
//

import UIKit

public class BaseButton: UIButton {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configSubviews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configSubviews()
    }
    
    public func configSubviews() {
        
    }
}
