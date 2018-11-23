//
//  BMViewRecycler.swift
//  Bigman
//
//  Created by yangl on 2018/11/20.
//  Copyright © 2018 yangl. All rights reserved.
//

import UIKit

class BMViewRecycler {
    
    var reuseIdentifiersToRecycledViews:[String: Array<BMRecyclableView>] = Dictionary()
    /// life cycle
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(BMViewRecycler.reduceMemoryUsage), name: UIApplication.didReceiveMemoryWarningNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func reduceMemoryUsage() {
        self.removeAllView()
    }
    
    public func removeAllView() {
        reuseIdentifiersToRecycledViews.removeAll()
    }
    
    /// public
    func dequeueReusableViewWithIdentifier(reuseIdentifier:String) -> BMRecyclableView? {
        var views:[BMRecyclableView]? = reuseIdentifiersToRecycledViews[reuseIdentifier]
        if let view = views?.last {
            views?.removeLast()
            view.prepareForReuse()
            return view
        }
        return nil
    }
    
    func recycleView(view:BMRecyclableView) {
        var reuseIdentifier:String
        
        if let reuseId = view.reuseIdentifier {
            reuseIdentifier = reuseId
        } else {
            reuseIdentifier = NSStringFromClass(type(of: view))
        }
        
        var views:Array? = reuseIdentifiersToRecycledViews[reuseIdentifier]
        if views == nil {
            views = Array()
            reuseIdentifiersToRecycledViews.updateValue(views!, forKey: reuseIdentifier)
        }
        views!.append(view)
    }
}
