//
//  BMRecyclableView.swift
//  Bigman
//
//  Created by yangl on 2018/11/20.
//  Copyright © 2018 yangl. All rights reserved.
//

import UIKit

class BMRecyclableView: UIView {
    
    var reuseIdentifier:String?
    
    init(reuseIdentifier:String?) {
        self.reuseIdentifier = reuseIdentifier
        super.init(frame: CGRect.zero)
    }
    
    override convenience init(frame: CGRect) {
        self.init(reuseIdentifier: nil)
    }
    
    func prepareForReuse() {

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
