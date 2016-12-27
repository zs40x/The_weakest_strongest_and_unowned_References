//: Playground - noun: a place where people can play

import UIKit


class Machine {
    
    init() {
        NSLog("Machine.init()")
    }
    
    deinit {
        NSLog("Machine.deinit()")
    }
}

var machine: Machine?
machine = Machine()
machine = nil