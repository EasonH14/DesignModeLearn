//
//  StrategyContext.swift
//  DesignModeLearn
//
//  Created by  黄怡盛 on 16/4/30.
//  Copyright © 2016年 hys. All rights reserved.
//

import UIKit

class StrategyContext: NSObject {

    var cashAlgorithm: CashAlgorithm?
    
    init(type: String) {
        switch(type) {
            case "正常收费":
                self.cashAlgorithm = CashNormal()
            case "打8折":
                self.cashAlgorithm = CashRebate(moneyRebate: 0.8)
            case "满300返100":
                self.cashAlgorithm = CashReturn(moneyCondition: 300, moneyReturn: 100)
            default:
                self.cashAlgorithm = CashNormal()
        }
    }
    
    func getResult(money: Double) -> Double {
        return cashAlgorithm!.cashCalculate(money)
    }
}

protocol CashAlgorithm {
    func cashCalculate(money: Double) -> Double;
}

class CashNormal: CashAlgorithm {
    
    func cashCalculate(money: Double) -> Double {
        return money;
    }
}

class CashRebate: CashAlgorithm {
    
    var moneyRebate: Double
    
    init(moneyRebate: Double) {
        self.moneyRebate = moneyRebate
    }
    
    func cashCalculate(money: Double) -> Double {
        return money * moneyRebate
    }
}

class CashReturn: CashAlgorithm {
    
    var moneyCondition: Double
    var moneyReturn: Double
    
    init(moneyCondition: Double, moneyReturn: Double) {
        self.moneyCondition = moneyCondition
        self.moneyReturn = moneyReturn
    }
    
    func cashCalculate(money: Double) -> Double {
        return money - (Double)((Int)(money / moneyCondition)) * moneyReturn
    }
}
