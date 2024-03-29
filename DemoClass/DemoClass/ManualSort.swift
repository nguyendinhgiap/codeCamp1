//
//  ManualSort.swift
//  DemoClass
//
//  Created by techmaster on 9/12/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
extension Array {
    func avargage()->Double{
        var tg:Int = 0
        var n = self.count
        for var i=0;i < n;++i{
            tg += (self[i]as Int)
        }
        return Double(tg)/Double(n)
    }
    mutating func sortChanle(){
        for var i=0;i < self.count - 1 ;++i{
            if self[i]as Int % 2 != 0{
                for var j = i + 1;j < self.count - 1;++j{
                    if self[j]as Int % 2 == 0{
                        var tmp = self[i]
                        self[i] = self[j]
                        self[j] = tmp
                    }
                }
            }
        }
    }
    func avargageComplex()->Complex{
        var n = self.count
        var tg1:Double = 0.0
        var tg2:Double = 0.0
        for var i = 0;i < n;++i{
            tg1 += (self[i]as Complex).real
            tg2 += (self[i]as Complex).imagine
        }
        var real = tg1 / Double(n)
        var imagine = tg2 / Double(n)
        return Complex(real: real, imagine: imagine)
    }
    mutating  func randomthumon(){
        while(self.count != 1){
            var index = arc4random() % UInt32(self.count)
            self.removeAtIndex(Int(index))
        }
    
    }
    mutating func randomhv(hv:Int){
        while(self.count != hv){
            var index = arc4random() % UInt32(self.count)
            self.removeAtIndex(Int(index))
        }
    }
    mutating func randomtv(tv:Int){
        while(self.count != tv){
            var index = arc4random() % UInt32(self.count)
            self.removeAtIndex(Int(index))
        }
    }
    mutating func randomtd(td:Int){
        while(self.count != td){
            var index = arc4random() % UInt32(self.count)
            self.removeAtIndex(Int(index))
        }
    }

//See this link http://www.programmingsimplified.com/c/source-code/c-program-bubble-sort
    
    mutating func bubbleSort(isOrderedBefore: (T, T) -> Bool) {
        let n = self.count
        for var i = 0; i < n - 1; i++ {
            for var j = 0; j < n - i - 1; j++ {
                if !isOrderedBefore(self[j], self[j+1]) {
                    let temp = self[j]
                    self[j] = self[j+1]
                    self[j+1] = temp
                }
            }
        }
    }
//http://www.vogella.com/tutorials/JavaAlgorithmsQuicksort/article.html
//QuickSort and Optimized QuickSort http://alienryderflex.com/quicksort/
//http://www.cquestions.com/2008/01/c-program-for-quick-sort.html
  
    mutating func quickSort(isOrderedBefore: (T, T) -> Bool) {
        qSort(0, end: self.count, compare: isOrderedBefore)
    }
    private mutating func swap(i: Int, j: Int) {
        let temp = self[i]
        self[i] = self[j]
        self[j] = temp
    }
    
    private mutating func qSort(beg: Int, end: Int,compare: (T, T) -> Bool) {
        
        var left = beg + 1
        var right = end
        if right <= left { return }
        let pivot = self[beg]
        while left < right {
            if compare(self[left], pivot) {
                left++
            } else {
                swap(left, j:--right)
            }
        }
        swap(--left, j: beg)
        qSort(beg, end: left, compare: compare)
        qSort(right, end: end, compare: compare)
        
    }
}
class ManualSort: ConsoleScreen {
    var intArr : [Int]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intArr = [Int]()
        for var i = 0; i < 100; i++ {
            intArr.append(Int(arc4random_uniform(200)))
        }
        
        let start0 = NSDate(); //Start time
        self.testBubbleSort()
        let end0 = NSDate();   //End time
        let timeInterval0: Double = end0.timeIntervalSinceDate(start0); //Difference in seconds (double)
        
        self.writeln("Bubble Sort takes \(timeInterval0) seconds\n")
        
        let start = NSDate(); //Start time
        self.testQuickSort()
        let end = NSDate();   //End time
        let timeInterval: Double = end.timeIntervalSinceDate(start); //Difference in seconds (double)
        
        self.writeln("Quick Sort takes \(timeInterval) seconds")
    }

    func testBubbleSort() {
        var copyArr = intArr
        copyArr.bubbleSort { $0 < $1 }
       
    }
    
    func testQuickSort() {
        var copyArr = intArr
        copyArr.quickSort { $0 < $1 }
    }
}
