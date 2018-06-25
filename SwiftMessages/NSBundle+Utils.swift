//
//  NSBundle+Utils.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import Foundation

extension Bundle {
    static func sm_frameworkBundle() -> Bundle {
        let bundle = Bundle(for: MessageView.self)
        if let path = bundle.path(forResource: "SwiftMessages", ofType: "bundle") {
            return Bundle(path: path)!
        }
        else {
            return bundle
        }
    }
}
