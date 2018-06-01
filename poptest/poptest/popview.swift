//
//  popview.swift
//  poptest
//
//  Created by Fernando on 2018/5/31.
//  Copyright © 2018年 Liteng. All rights reserved.
//

import UIKit

class popview: ETPopupView {

    var selBlock:((_ text: String) -> ())?
    override func awakeFromNib() {
        super.awakeFromNib()
        self.frame.size = CGSize(width: UIScreen.main.bounds.width/3 * 2, height: 200)
        // 设置时间
        animationDuration = 0.3
        // 设置弹出类型 sheet/alert/custom
        type = .alert
        // 设置其他点击其他位置退出
        ETPopupWindow.sharedWindow().touchWildToHide = true
    }
    
    @IBAction func action(_ sender: Any) {
        selBlock?("hello")
        self.hide()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
