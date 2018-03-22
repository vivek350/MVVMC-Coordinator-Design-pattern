//
//  T1V4ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T1V4ViewControllerDelegate: class {
    func goToT1V5()
}

class T1V4ViewController: UIViewController {
    
    weak var delegate: T1V4ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T1V4"
    }

    @IBAction func goToT1V5(_ sender: Any) {
        delegate?.goToT1V5()
    }
}
