//
//  T3V4ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T3V4ViewControllerDelegate: class {
    func goToT3V5()
}

class T3V4ViewController: UIViewController {
    
    weak var delegate: T3V4ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T3V4"
    }

    @IBAction func goToT3V5(_ sender: Any) {
        delegate?.goToT3V5()
    }
}
