//
//  Weak.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import Foundation

public class Weak<T: AnyObject> {
    public weak var value : T?
    public init(value: T?) {
        self.value = value
    }
}
