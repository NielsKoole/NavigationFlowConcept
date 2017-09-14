//
//  PushSomethingViewController.swift
//  NavigationFlow
//
//  Created by Niels Koole on 11/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import UIKit

protocol PushSomethingViewControllerActions: class {
    func closePushSomething(viewController: PushSomethingViewController)
}

class PushSomethingViewController: UIViewController {
    
    let actionDelegate: PushSomethingViewControllerActions
    
    init(actionDelegate: PushSomethingViewControllerActions) {
        self.actionDelegate = actionDelegate
        super.init(nibName: PushSomethingViewController.className, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popButtonTapped(_ sender: Any) {
        actionDelegate.closePushSomething(viewController: self)
    }
}
