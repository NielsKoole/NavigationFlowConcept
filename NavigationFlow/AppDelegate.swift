//
//  AppDelegate.swift
//  NavigationFlow
//
//  Created by Niels Koole on 09/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainFlowController: MainFlowController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = window {
            let flowController = MainFlowController(with: window)
            flowController.initiateRootController()
            mainFlowController = flowController
        }
        
        window?.makeKeyAndVisible()
        
        return true
    }
}

