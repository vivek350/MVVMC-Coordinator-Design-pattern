//
//  ThirdTabCoordinator.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol ThirdTabCoordinatorDelegate: class {
    
}

class ThirdTabCoordinator: Coordinator {
    
    fileprivate let tabBarController: UITabBarController?
    fileprivate var firstTabCoordinator: FirstTabCoordinator?
    fileprivate var thirdTabCoordinator: ThirdTabCoordinator?
    
    
    private let navigationController: UINavigationController
    weak var delegate: ThirdTabCoordinatorDelegate?
    
    init(navigationController: UINavigationController, tabBarController: UITabBarController) {
        self.navigationController = navigationController
        self.tabBarController = tabBarController
    }
    
    func start() {
        let t3V1VC = T3V1ViewController()
        t3V1VC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        t3V1VC.delegate = self
        self.navigationController.pushViewController(t3V1VC, animated: false)
    }
    
    func showT3V2VC() {
        let t3V2VC = T3V2ViewController()
        t3V2VC.delegate = self
        self.navigationController.pushViewController(t3V2VC, animated: true)
    }
    
    func showT3V3VC() {
        let t3V3VC = T3V3ViewController()
        t3V3VC.delegate = self
        self.navigationController.pushViewController(t3V3VC, animated: true)
    }
    
    func showT3V4VC() {
        let t3V4VC = T3V4ViewController()
        t3V4VC.delegate = self
        self.navigationController.pushViewController(t3V4VC, animated: true)
    }
    
    func showT3V5VC() {
        let t3V5VC = T3V5ViewController()
        t3V5VC.delegate = self
        self.navigationController.pushViewController(t3V5VC, animated: true)
    }
}

extension ThirdTabCoordinator: T3V1ViewControllerDelegate {
    func goToT3V2() {
        showT3V2VC()
    }
}

extension ThirdTabCoordinator: T3V2ViewControllerDelegate{
    func goToT3V3() {
        showT3V3VC()
    }
}

extension ThirdTabCoordinator: T3V3ViewControllerDelegate {
    func goToT3V4() {
        showT3V4VC()
    }
}

extension ThirdTabCoordinator: T3V4ViewControllerDelegate{
    func goToT3V5() {
        showT3V5VC()
    }
}

extension ThirdTabCoordinator: T3V5ViewControllerDelegate {
    // TODO
}



