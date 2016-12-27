//: Playground - noun: a place where people can play

import UIKit


class Machine {
    
    let internalName: String
    
    init(internalName: String) {
        NSLog("Machine.init()")
        
        self.internalName = internalName
    }
    
    deinit {
        NSLog("Machine.deinit()")
    }
    
    lazy var externalName: () -> String = {
        
        return self.internalName
    }
}

var machine: Machine?
machine = Machine(internalName: "CS 140.2")
machine?.externalName()
machine = nil