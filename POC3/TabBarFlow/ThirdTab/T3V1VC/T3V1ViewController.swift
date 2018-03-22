//
//  T3V1ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T3V1ViewControllerDelegate: class {
    func goToT3V2()
}

class T3V1ViewController: UIViewController {
    
    weak var delegate: T3V1ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T3V1"
    }

    @IBAction func goToT3V2(_ sender: Any) {
        delegate?.goToT3V2()
    }
}

