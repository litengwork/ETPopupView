//
//  ViewController.swift
//  poptest
//
//  Created by Fernando on 2018/5/22.
//  Copyright © 2018年 Liteng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labels: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func action(_ sender: Any) {
        //设置弹出view
        let popview = Bundle.main.loadNibNamed("popview", owner: nil, options: nil)?[0] as! popview
        popview.show()
        popview.selBlock = {[weak self] (content) in
            print(content)
            self?.labels.text = content
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

