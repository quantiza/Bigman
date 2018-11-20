//
//  BMViewRecycler.swift
//  Bigman
//
//  Created by yangl on 2018/11/20.
//  Copyright © 2018 yangl. All rights reserved.
//

import UIKit

class BMViewRecycler: NSObject {
    
    var reuseIdentifiersToRecycledViews:[String: Array<BMRecyclableView>]
    
    override init() {
        self.reuseIdentifiersToRecycledViews = Dictionary()
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(reduceMemoryUsage), name: UIApplication.didReceiveMemoryWarningNotification, object: nil)
    }
    
    @objc func reduceMemoryUsage() {
        self.removeAllView()
    }
    
    public func removeAllView() {
        reuseIdentifiersToRecycledViews.removeAll()
    }
}
