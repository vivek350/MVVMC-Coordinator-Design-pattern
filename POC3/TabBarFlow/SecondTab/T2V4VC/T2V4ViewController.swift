//
//  T2V4ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T2V4ViewControllerDelegate: class {
    func goToT2V5()
}

class T2V4ViewController: UIViewController {
    
    weak var delegate: T2V4ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T2V4"
    }

    @IBAction func goToT2V5(_ sender: Any) {
        delegate?.goToT2V5()
    }
}
