//
//  Constructor.swift
//  DesignModeLearn
//
//  Created by  黄怡盛 on 16/5/1.
//  Copyright © 2016年 hys. All rights reserved.
//

import UIKit

class Constructor: NSObject {

}

protocol PersonBuilder {
    func buildHead()
    func buildArms()
    func buildBody()
    func buildLegs()
}


