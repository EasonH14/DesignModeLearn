//
//  OperationFactory.swift
//  DesignModeLearn
//
//  Created by  黄怡盛 on 16/4/30.
//  Copyright © 2016年 hys. All rights reserved.
//

import UIKit

/**
 *  简单工厂模式
 */
class OperationFactory: NSObject {
    
    static func createOperation(operate: String) -> Operation {
        
        var operation: Operation
        switch (operate) {
            case "+":
                operation = OperationAdd()
            case "-":
                operation = OperationSubstract()
            case "*":
                operation = OperationMultiply()
            case "/":
                operation = OperationDivide()
            default:
                operation = OperationAdd()
        }
        return operation
    }
    
}

class Operation: NSObject {
    
    var numberA: Double?
    var numberB: Double?
    
    func getResult() -> Double {
        
        let result = 0.0
        return result
    }
}

class OperationAdd: Operation {
    
    override func getResult() -> Double {
        return numberA! + numberB!
    }
}

class OperationSubstract: Operation {
    
    override func getResult() -> Double {
        return numberA! - numberB!
    }
}

class OperationMultiply: Operation {
    
    override func getResult() -> Double {
        return numberA! * numberB!
    }
}

class OperationDivide: Operation {
    
    override func getResult() -> Double {
        var result = 0.0
        guard numberB! != 0 else {
            print("numberB can not be zero")
            return result
        }
        result = numberA! / numberB!
        return result
    }
}

/**
 *  工厂方法模式
 */

protocol IFactory {
    static func createOperation() -> Operation
}

class AddFactory: IFactory {
    
    static func createOperation() -> Operation {
        return OperationAdd()
    }
}

class SubstractFactory: IFactory {
    
    static func createOperation() -> Operation {
        return OperationSubstract()
    }
}

class MultiplyFactory: IFactory {
    
    static func createOperation() -> Operation {
        return OperationMultiply()
    }
}

class DivideFactory: IFactory {
    
    static func createOperation() -> Operation {
        return OperationDivide()
    }
}
