//
//  ViewControllersFactory.swift
//  NavigationFlow
//
//  Created by Niels Koole on 09/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import UIKit

class ViewControllersFactory {
    
    static func createMainViewController(actionDelegate: MainViewControllerActions) -> UIViewController {
        return MainViewController(actionDelegate: actionDelegate,
                                  timelineRepository: RepositoriesFactory.createTimelineRepository())
    }
    
    static func createPushSomethingViewController(actionDelegate: PushSomethingViewControllerActions) -> UIViewController {
        return PushSomethingViewController(actionDelegate: actionDelegate)
    }
    
    static func createPresentSomethingViewController(actionDelegate: PresentSomethingViewControllerActions) -> UIViewController {
        return PresentSomethingViewController(actionDelegate: actionDelegate)
    }
}
