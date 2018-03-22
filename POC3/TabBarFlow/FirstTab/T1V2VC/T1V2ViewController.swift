//
//  T1V2ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/21/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T1V2ViewControllerDelegate: class {
    func goToT1V3()
    func gotoT3V2(from t1V2VC: T1V2ViewController)
}

class T1V2ViewController: UIViewController {
    
    weak var delegate: T1V2ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T1V2"
    }

    @IBAction func goToT1V3(_ sender: Any) {
        delegate?.goToT1V3()
    }
    
    @IBAction func goToT3V2(_ sender: Any) {
        if let navController = self.tabBarController!.viewControllers![2] as? UINavigationController {
            if navController.visibleViewController is T3V1ViewController{
                let t3V1VC = navController.visibleViewController as! T3V1ViewController
                t3V1VC.delegate?.goToT3V2()
                self.tabBarController!.selectedIndex = 2
            }else if navController.visibleViewController is T3V2ViewController {
                self.tabBarController!.selectedIndex = 2
            }else {
                if let t3V2VC = navController.viewControllers[1] as? T3V2ViewController  {
                    navController.popToViewController(t3V2VC, animated: true)
                    self.tabBarController!.selectedIndex = 2
                }
            }
        }
    }
    
}
