//: Playground - noun: a place where people can play

import UIKit

class Person {
    
    var workingOnMachine: Machine?
    
    init() {
        NSLog("Person.init()")
    }
    
    deinit {
        NSLog("Person.deinit()")
    }
}

class Machine {
    
    var machineOperator: Person?
    
    init() {
        NSLog("Machine.init()")
    }
    
    deinit {
        NSLog("Machine.deinit()")
    }
    
    func startWorking(withOperator: Person) {
        machineOperator = withOperator
    }
}

var machine: Machine?
machine = Machine()
var operatorPerson = Person()
machine?.startWorking(withOperator: operatorPerson)
operatorPerson.workingOnMachine = machine
machine = nil