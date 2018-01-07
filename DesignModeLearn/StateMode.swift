//
//  StateMode.swift
//  DesignModeLearn
//
//  Created by  黄怡盛 on 16/5/1.
//  Copyright © 2016年 hys. All rights reserved.
//

import UIKit

class StateMode: NSObject {

}

class Work: NSObject {
    
    var currentTime: Int?
    var workState: WorkState
    
    override init() {
        workState = ForenoonState()
    }
    
    func writeProgram() {
        workState.writeProgram(self)
    }
}

protocol WorkState {
    func writeProgram(work: Work)
}

class ForenoonState: WorkState {
    
    func writeProgram(work: Work) {
        if(work.currentTime! < 12) {
            print("current time is forenoon work \(work.currentTime!)")
        } else {
            
        }
    }
}