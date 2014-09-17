//
//  Bai3.swift
//  DemoClass
//
//  Created by Dinhgiap on 9/17/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai3: ConsoleScreen {
   var  arrayPlayer = [Player(name: "nguyen dinh giap", soao: 7, vitri: "tien dao"),Player(name: "trinh minh cuong", soao: 8, vitri: "thu mon"),Player(name: "le dinh duy", soao: 9, vitri: "tien dao"),Player(name: "pham minh hieu", soao: 10, vitri: "tien ve"),Player(name: "hoang van giap", soao: 11, vitri: "tien ve"),Player(name: "nguyen dang dat", soao: 12, vitri: "tien ve"),Player(name: "ha minh quyet", soao: 13, vitri: "hau ve"),Player(name: "nguyen van son", soao: 14, vitri: "hau ve"),Player(name: "ngo trung kien", soao: 15, vitri: "hau ve"),Player(name: "pham tuan viet", soao: 16, vitri: "thu mon"),Player(name: "nguyen minh hieu", soao: 17, vitri: "thu mon"),Player(name: "pham tuan anh", soao: 18, vitri: "hau ve"),Player(name: "vu ba phu", soao: 19, vitri: "tien dao"),Player(name: "nguyen van tuyen ", soao: 20, vitri: "tien ve"),Player(name: "nguyen ba son", soao: 21, vitri: "hau ve"),Player(name: "nguyen hung", soao: 22, vitri: "hau ve"),Player(name: "bui muoi", soao: 23, vitri: "hau ve"),Player(name: "nguyen thao", soao: 24, vitri: "tien ve"),Player(name: "nguen duong", soao: 25, vitri: "tien ve")]
    var arraytm:[Player] = [Player]()
    var arrayhv:[Player] = [Player]()
    var arraytv:[Player] = [Player]()
    var arraytd:[Player] = [Player]()
       override func viewDidLoad() {
        super.viewDidLoad()
       self.appenarray()
        arraytv.randomtv(4)
        arraytm.randomthumon()
        arraytd.randomtd(2)
        arrayhv.randomhv(4)
         self.writeln("thu mon duoc chon la")
        for var i = 0;i < arraytm.count;++i{
           
            self.writeln("\(arraytm[i].name) has number \( arraytm[i].soao)")
        }
        self.writeln("---------------------")
        self.writeln("hau ve duoc chon la")

        for var i = 0;i < arrayhv.count;++i{
                       self.writeln("\(arrayhv[i].name) has number \( arrayhv[i].soao)")
        }
        self.writeln("---------------------")

        self.writeln("tien ve duoc chon la")
        for var i = 0;i < arraytv.count;++i{
            
            self.writeln("\(arraytv[i].name) has number \( arraytv[i].soao)")
        }
        self.writeln("---------------------")

        self.writeln("tien dao duoc chon la")

        for var i = 0;i < arraytd.count;++i{
                      self.writeln("\(arraytd[i].name) has number \( arraytd[i].soao)")
        }
    
}
    func appenarray(){
        for var i = 0;i < arrayPlayer.count;++i {
            if arrayPlayer[i].vitri == "thu mon"{
                arraytm.append(arrayPlayer[i])
            }
            if arrayPlayer[i].vitri == "hau ve"{
                arrayhv.append(arrayPlayer[i])
            }
            if arrayPlayer[i].vitri == "tien ve"{
                arraytv.append(arrayPlayer[i])
            }
            if arrayPlayer[i].vitri == "tien dao"{
                arraytd.append(arrayPlayer[i])
            }
            
            
        }
    }
}