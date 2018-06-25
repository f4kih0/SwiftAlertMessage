//
//  Error.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import Foundation

/**
 The `SwiftMessagesError` enum contains the errors thrown by SwiftMessages.
 */
enum SwiftMessagesError: Error {
    case cannotLoadViewFromNib(nibName: String)
    case noRootViewController
}
