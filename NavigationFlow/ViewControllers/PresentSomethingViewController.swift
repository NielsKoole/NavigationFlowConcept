//
//  PresentSomethingViewController.swift
//  NavigationFlow
//
//  Created by Niels Koole on 11/09/2017.
//  Copyright © 2017 NOS. All rights reserved.
//

import UIKit

protocol PresentSomethingViewControllerActions: class {
    func cancelPresentSomething(viewController: PresentSomethingViewController)
}

class PresentSomethingViewController: UIViewController {
    
    let actionDelegate: PresentSomethingViewControllerActions
    
    init(actionDelegate: PresentSomethingViewControllerActions) {
        self.actionDelegate = actionDelegate
        super.init(nibName: PresentSomethingViewController.className, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelActionTapped(_:)))
        navigationItem.leftBarButtonItem = cancelButton
    }
    
    @objc func cancelActionTapped(_ sender: Any) {
        actionDelegate.cancelPresentSomething(viewController: self)
    }
}
