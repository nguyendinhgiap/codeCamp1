//
//  Bai4.swift
//  DemoClass
//
//  Created by Dinhgiap on 9/17/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai4: ConsoleScreen {
    var array = [1,5,2,6,7,2,3,9]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sortedchanle()
        // Do any additional setup after loading the view.
    }

    func sortedchanle(){
        array.sortChanle()
        self.writeln("\(array)")
    }
   

}
