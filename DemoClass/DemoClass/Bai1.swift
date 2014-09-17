//
//  Bai1.swift
//  DemoClass
//
//  Created by Dinhgiap on 9/17/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai1: ConsoleScreen {
var array = [1,4,6,5,3,8,9,4,1]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tinhtbc()
        // Do any additional setup after loading the view.
    }

    func tinhtbc(){
        var result = array.avargage()
        self.writeln("\(result)")
    }

}
