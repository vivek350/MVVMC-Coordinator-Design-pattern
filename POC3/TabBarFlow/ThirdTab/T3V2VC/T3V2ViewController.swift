//
//  T3V2ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/21/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T3V2ViewControllerDelegate: class {
    func goToT3V3()
}

class T3V2ViewController: UIViewController {
    
    weak var delegate: T3V2ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T3V2"
    }

    @IBAction func goToT3V3(_ sender: Any) {
        delegate?.goToT3V3()
    }
}
