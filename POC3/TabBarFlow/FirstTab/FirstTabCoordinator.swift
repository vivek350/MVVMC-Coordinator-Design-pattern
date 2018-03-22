//
//  FirstTabCoordinator.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol FirstTabCoordinatorDelegate: class {
    func goToT3V2(from t1V2VC: T1V2ViewController)
    
}

class FirstTabCoordinator: Coordinator {
    
//    private var t3V2VC: T3V2ViewController?
    private var tabBarController: UITabBarController?
    private let navigationController: UINavigationController
    weak var delegate: FirstTabCoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let t1V1VC = T1V1ViewController()
        t1V1VC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        t1V1VC.delegate = self
        self.navigationController.pushViewController(t1V1VC, animated: false)
    }
    
    fileprivate func showT1V2VC() {
        let t1V2VC = T1V2ViewController()
        t1V2VC.delegate = self
        self.navigationController.pushViewController(t1V2VC, animated: true)
    }
    
    fileprivate func showT1V3VC() {
        let t1V3VC = T1V3ViewController()
        t1V3VC.delegate = self
        self.navigationController.pushViewController(t1V3VC, animated: true)
    }
    
    fileprivate func showT1V4VC() {
        let t1V4VC = T1V4ViewController()
        t1V4VC.delegate = self
        self.navigationController.pushViewController(t1V4VC, animated: true)
    }
    
    fileprivate func showT1V5VC() {
        let t1V5VC = T1V5ViewController()
        t1V5VC.delegate = self
        self.navigationController.pushViewController(t1V5VC, animated: true)
    }
}

extension FirstTabCoordinator: T1V1ViewControllerDelegate {
    func goToT1V2() {
        showT1V2VC()
    }
}

extension FirstTabCoordinator: T1V2ViewControllerDelegate {
    func gotoT3V2(from t1V2VC: T1V2ViewController) {
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.tabBarController(self.tabBarController!, shouldSelect: t3V2VC!)
    }
    
    func goToT1V3() {
        showT1V3VC()
    }
}

extension FirstTabCoordinator: T1V3ViewControllerDelegate {
    func goToT1V4() {
        showT1V4VC()
    }
}

extension FirstTabCoordinator: T1V4ViewControllerDelegate {
    func goToT1V5() {
        showT1V5VC()
    }
}

extension FirstTabCoordinator: T1V5ViewControllerDelegate {
    // TODO
}

