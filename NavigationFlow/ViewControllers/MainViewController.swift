//
//  MainViewController.swift
//  NavigationFlow
//
//  Created by Niels Koole on 09/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import UIKit

protocol MainViewControllerActions: class {
    func presentSomething(viewController: MainViewController)
    func pushSomething(viewController: MainViewController)
}

class MainViewController: UIViewController {
    
    let actionDelegate: MainViewControllerActions
    let timelineRepository: TimelineRepository
    
    init(actionDelegate: MainViewControllerActions, timelineRepository: TimelineRepository) {
        self.actionDelegate = actionDelegate
        self.timelineRepository = timelineRepository
        
        super.init(nibName: MainViewController.className, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func presentActionTapped(_ sender: Any) {
        actionDelegate.presentSomething(viewController: self)
    }
    
    @IBAction func pushButtonTapped(_ sender: Any) {
        actionDelegate.pushSomething(viewController: self)
    }
}
