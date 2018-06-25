//
//  MarginAdjustable.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import UIKit

/*
 Message views that implement the `MarginAdjustable` protocol will have their
 `layoutMargins` adjusted by SwiftMessages to account for the height of the
 status bar (when displayed under the status bar) and a small amount of
 overshoot in the bounce animation. `MessageView` implements this protocol
 by way of its parent class `BaseView`.
 
 For the effect of this protocol to work, subviews should be pinned to the
 message view's margins and the `layoutMargins` property should not be modified.
 
 This protocol is optional. A message view that doesn't implement `MarginAdjustable`
 is responsible for setting is own internal margins appropriately.
 */
public protocol MarginAdjustable {
    var bounceAnimationOffset: CGFloat { get set }
    /// Top margin adjustment for status bar avoidance in pre-iOS 11+
    var statusBarOffset: CGFloat { get set }
    /// Safe area top adjustment in iOS 11+
    var safeAreaTopOffset: CGFloat { get set }
    /// Safe area bottom adjustment in iOS 11+
    var safeAreaBottomOffset: CGFloat { get set }
}

