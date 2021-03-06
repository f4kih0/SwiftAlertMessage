//
//  MaskingView.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import UIKit


class MaskingView: PassthroughView {

    var accessibleElements: [NSObject] = []

    weak var backgroundView: UIView? {
        didSet {
            oldValue?.removeFromSuperview()
            if let view = backgroundView {
                view.isUserInteractionEnabled = false
                view.frame = bounds
                view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                addSubview(view)
                sendSubview(toBack: view)
            }
        }
    }

    override func accessibilityElementCount() -> Int {
        return accessibleElements.count
    }

    override func accessibilityElement(at index: Int) -> Any? {
        return accessibleElements[index]
    }

    override func index(ofAccessibilityElement element: Any) -> Int {
        guard let object = element as? NSObject else { return 0 }
        return accessibleElements.index(of: object) ?? 0
    }

    init() {
        super.init(frame: CGRect.zero)
        clipsToBounds = true
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        clipsToBounds = true
    }
}
