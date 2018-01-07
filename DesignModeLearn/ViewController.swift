//
//  ViewController.swift
//  DesignModeLearn
//
//  Created by  黄怡盛 on 16/4/30.
//  Copyright © 2016年 hys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var person: Person?
    var context: StrategyContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        person = Person(name: "hys");
        let tshirt: Tshirts = Tshirts()
        let leather: LeatherShoe = LeatherShoe()
        let jacket: Jacket = Jacket()
        
        tshirt.decorate(person!)
        jacket.decorate(tshirt)
        leather.decorate(jacket)
        
        leather.show()
        
        context = StrategyContext(type: "满300返100")
        let money = context!.getResult(700)
        print("you should pay \(money)")
        
        let oper = OperationFactory.createOperation("*")
        oper.numberA = 5
        oper.numberB = 4
        print("the result is \(oper.getResult())")
        
        let operate = AddFactory.createOperation()
        operate.numberA = 15
        operate.numberB = 47
        print("the result2 is \(operate.getResult())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

