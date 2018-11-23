//
//  BMPagingView.swift
//  Bigman
//
//  Created by yangl on 2018/11/23.
//  Copyright © 2018 yangl. All rights reserved.
//

import UIKit

let BMPagingViewUnknownNumberOfPages = -1
let BMPagingViewDefaultPageMargin = 10

enum BMPagingViewType {
    case horizontal
    case vertical
}

@objc protocol BMPagingViewDelegate: UIScrollViewDelegate {
    @objc optional func pagingViewDidScroll(pagingView: BMPagingView)
    @objc optional func pagingViewWillChangePages(pagingView: BMPagingView)
    @objc optional func pagingViewDidChangePages(pagingView: BMPagingView)
}

protocol BMPagingViewDataSource {
    func numberOfPages(in pagingView: BMPagingView) -> Int
    func pagingView(_ pagingView: BMPagingView, pageFor index:Int) -> UIView
}

@objc protocol BMPagingViewPage {
    var pageIndex:Int {get set}
    
    @objc optional func pageDidDisappear()
    @objc optional func setFrameAndMaintainState(frame: CGRect)
}

class BMPagingView: UIView, UIScrollViewDelegate {
    
}
