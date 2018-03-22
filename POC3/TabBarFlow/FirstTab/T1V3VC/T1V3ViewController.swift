//
//  T1V3ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T1V3ViewControllerDelegate: class {
    func goToT1V4()
}

class T1V3ViewController: UIViewController {
    
    weak var delegate: T1V3ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T1V3"
    }

    @IBAction func goToT1V4(_ sender: Any) {
        delegate?.goToT1V4()
    }
}
