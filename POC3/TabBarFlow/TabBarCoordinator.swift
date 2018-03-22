//
//  TabBarCoordinator.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

class TabBarCoordinator: Coordinator {
    
    fileprivate let tabBarController: UITabBarController
    fileprivate var tabBarCoordinator: TabBarCoordinator?
    
    // MARK: Child Coordinators
    
    private var firstTabCoordinator: FirstTabCoordinator?
    private var secondTabCoordinator: SecondTabCoordinator?
    private var thirdTabCoordinator: ThirdTabCoordinator?
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    // MARK: FlowCoordinator
    
    func start() {
        showTabBarFlow()
        }
    
    fileprivate func showTabBarFlow() {
        
        // SetUp Additional FlowCoordinators for each Tab
        
        // First Tab
        let firstNavController = UINavigationController()
        firstTabCoordinator = FirstTabCoordinator(navigationController: firstNavController)
        firstTabCoordinator?.start()
        
        // Second Tab
        let secondNavController = UINavigationController()
        secondTabCoordinator = SecondTabCoordinator(navigationController: secondNavController)
        secondTabCoordinator?.start()
        
        // Third Tab
        let thirdNavController = UINavigationController()
        thirdTabCoordinator = ThirdTabCoordinator(navigationController: thirdNavController, tabBarController: tabBarController)
        thirdTabCoordinator?.start()
        
        tabBarController.viewControllers = [firstNavController, secondNavController, thirdNavController]
    }
}



