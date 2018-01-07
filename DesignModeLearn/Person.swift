//
//  Person.swift
//  DesignModeLearn
//
//  Created by  黄怡盛 on 16/4/30.
//  Copyright © 2016年 hys. All rights reserved.
//

import UIKit

class Person: NSObject {

    private var name: String?
    
    init(name: String) {
        self.name = name
    }
    
    override init() {
        
    }
    
    func show() {
        print("\(name!) wear");
    }
    
}

class Finery: Person {
    
    var person: Person?
    
    func decorate(person: Person) {
        self.person = person
    }
    
    override func show() {
        if let person1 = person {
            person1.show()
        }
    }
}

class Tshirts: Finery {
    
    override func show() {
        super.show()
        print(" Tshirt")
    }
}

class BigTrouser: Finery {
    
    override func show() {
        super.show()
        print(" BigTrouser")
    }
}

class Jacket: Finery {
    
    override func show() {
        super.show()
        print(" Jacket")
    }
}

class LeatherShoe: Finery {
    
    override func show() {
        super.show()
        print(" LeatherShoe")
    }
}
