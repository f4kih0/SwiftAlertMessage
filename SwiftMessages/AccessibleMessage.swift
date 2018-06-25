//
//  AccessibleMessage.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import Foundation

/**
 Message views that `AccessibleMessage`, as `MessageView` does will
 have proper accessibility behavior when displaying messages.
 `MessageView` implements this protocol.
 */
public protocol AccessibleMessage {
    var accessibilityMessage: String? { get }
    var accessibilityElement: NSObject? { get }
    var additonalAccessibilityElements: [NSObject]? { get }
}
