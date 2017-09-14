//
//  MainFlowController.swift
//  NavigationFlow
//
//  Created by Niels Koole on 09/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import UIKit

class MainFlowController {
    
    let window: UIWindow
    var childFlowContainers: [Any] = []
    
    init(with window: UIWindow) {
        self.window = window
    }
    
    func initiateRootController() {
        let mainViewController = ViewControllersFactory.createMainViewController(actionDelegate: self)
        let navigationController = UINavigationController(rootViewController: mainViewController)
        
        window.rootViewController = navigationController
    }
}

// MARK: - MainViewControllerActions

extension MainFlowController: MainViewControllerActions {
    
    func presentSomething(viewController: MainViewController) {
        let somethingViewController = ViewControllersFactory.createPresentSomethingViewController(actionDelegate: self)
        let somethingNavigationController = UINavigationController(rootViewController: somethingViewController)
        
        viewController.present(somethingNavigationController, animated: true, completion: nil)
    }
    
    func pushSomething(viewController: MainViewController) {
        let pushSomethingViewController = ViewControllersFactory.createPushSomethingViewController(actionDelegate: self)
        
        viewController.navigationController?.pushViewController(pushSomethingViewController, animated: true)
    }
}

// MARK: PresentSomethingViewControllerActions

extension MainFlowController: PresentSomethingViewControllerActions {
    
    func cancelPresentSomething(viewController: PresentSomethingViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
}

// MARK: - PushSomethingViewControllerActions

extension MainFlowController: PushSomethingViewControllerActions {
    
    func closePushSomething(viewController: PushSomethingViewController) {
        viewController.navigationController?.popViewController(animated: true)
    }
}
