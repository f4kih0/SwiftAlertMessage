//
//  UIEdgeInsets+Utils.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    public static func +(left: UIEdgeInsets, right: UIEdgeInsets) -> UIEdgeInsets {
        let topSum = left.top + right.top
        let leftSum = left.left + right.left
        let bottomSum = left.bottom + right.bottom
        let rightSum = left.right + right.right
        return UIEdgeInsets(top: topSum, left: leftSum, bottom: bottomSum, right: rightSum)
    }
}
