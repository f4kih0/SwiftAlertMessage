//
//  Array+Utils.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import Darwin

public extension Array {
    
    /**
     Returns a random element from the array. Can be used to create a playful
     message that cycles randomly through a set of emoji icons, for example.
     */
    public func sm_random() -> Iterator.Element? {
        guard count > 0 else { return nil }
        return self[Int(arc4random_uniform(UInt32(count)))]
    }
}
