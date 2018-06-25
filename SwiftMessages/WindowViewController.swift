//
//  WindowViewController.swift
//  SwiftMessages
//
//  Created by Ali Fakih on 8/1/17.
//  Copyright © 2018 Fakiho. All rights reserved.
//

import UIKit

open class WindowViewController: UIViewController
{
    fileprivate var window: UIWindow?
    
    let windowLevel: UIWindowLevel
    let config: SwiftMessages.Config
    
    override open var shouldAutorotate: Bool {
        return config.shouldAutorotate
    }
    
    public init(windowLevel: UIWindowLevel?, config: SwiftMessages.Config)
    {
        self.windowLevel = windowLevel ?? UIWindowLevelNormal
        self.config = config
        let window = PassthroughWindow(frame: UIScreen.main.bounds)
        self.window = window
        super.init(nibName: nil, bundle: nil)
        self.view = PassthroughView()
        window.rootViewController = self
        window.windowLevel = windowLevel ?? UIWindowLevelNormal
    }
    
    func install(becomeKey: Bool) {
        guard let window = window else { return }
        if becomeKey {
            window.makeKeyAndVisible()            
        } else {
            window.isHidden = false
        }
    }
    
    func uninstall() {
        window?.isHidden = true
        window = nil
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return config.preferredStatusBarStyle ?? super.preferredStatusBarStyle
    }
}

extension WindowViewController {
    static func newInstance(windowLevel: UIWindowLevel?, config: SwiftMessages.Config) -> WindowViewController {
        return config.windowViewController?(windowLevel, config) ?? WindowViewController(windowLevel: windowLevel, config: config)
    }
}
