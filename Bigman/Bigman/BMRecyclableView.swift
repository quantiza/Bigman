//
//  BMRecyclableView.swift
//  Bigman
//
//  Created by yangl on 2018/11/20.
//  Copyright © 2018 yangl. All rights reserved.
//

import UIKit

class BMRecyclableView: UIView {
    
    public var reuseIdentifier:String?
    
    public init(reuseIdentifier:String?) {
        super.init(frame: CGRect.zero)
        self.reuseIdentifier = reuseIdentifier
    }
    
    override convenience init(frame: CGRect) {
        self.init(reuseIdentifier: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
