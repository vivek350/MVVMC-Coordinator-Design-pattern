//
//  T3V3ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T3V3ViewControllerDelegate: class {
    func goToT3V4()
}

class T3V3ViewController: UIViewController {
    
    weak var delegate: T3V3ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T3V3"
    }

    @IBAction func goToT3V4(_ sender: Any) {
        delegate?.goToT3V4()
    }
}
