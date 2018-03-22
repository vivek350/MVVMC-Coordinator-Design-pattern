//
//  SecondTabCoordinator.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol SecondTabCoordinatorDelegate: class {
    
}

class SecondTabCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    weak var delegate: SecondTabCoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let t2V1VC = T2V1ViewController()
        t2V1VC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        t2V1VC.delegate = self
        self.navigationController.pushViewController(t2V1VC, animated: false)
    }
    
    fileprivate func showT2V2VC() {
        let t2V2VC = T2V2ViewController()
        t2V2VC.delegate = self
        self.navigationController.pushViewController(t2V2VC, animated: true)
    }
    
    fileprivate func showT2V3VC() {
        let t2V3VC = T2V3ViewController()
        t2V3VC.delegate = self
        self.navigationController.pushViewController(t2V3VC, animated: true)
    }
    
    fileprivate func showT2V4VC() {
        let t2V4VC = T2V4ViewController()
        t2V4VC.delegate = self
        self.navigationController.pushViewController(t2V4VC, animated: true)
    }
    
    fileprivate func showT2V5VC() {
        let t2V5VC = T2V5ViewController()
        t2V5VC.delegate = self
        self.navigationController.pushViewController(t2V5VC, animated: true)
    }
}

extension SecondTabCoordinator: T2V1ViewControllerDelegate {
    func goToT2V2() {
        showT2V2VC()
    }
}

extension SecondTabCoordinator: T2V2ViewControllerDelegate {
    func goToT2V3() {
        showT2V3VC()
    }
}

extension SecondTabCoordinator: T2V3ViewControllerDelegate {
    func goToT2V4() {
        showT2V4VC()
    }
}

extension SecondTabCoordinator: T2V4ViewControllerDelegate {
    func goToT2V5() {
        showT2V5VC()
    }
}

extension SecondTabCoordinator: T2V5ViewControllerDelegate {
    // TODO
}
