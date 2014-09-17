//
//  Bai6.swift
//  DemoClass
//
//  Created by Dinhgiap on 9/17/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai6: ConsoleScreen {
    var array = [Complex(real: 3.2, imagine: 4.5),Complex(real: 5.2, imagine: 2.3),Complex(real: 5.8, imagine: 9.3)]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tbcComplex()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tbcComplex(){
      var result =  array.avargageComplex()
      self.writeln("\(result.description)")
    }

}
