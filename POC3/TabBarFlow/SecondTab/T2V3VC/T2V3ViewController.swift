//
//  T2V3ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T2V3ViewControllerDelegate: class {
    func goToT2V4()
}

class T2V3ViewController: UIViewController {
    
    weak var delegate: T2V3ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T2V3"
    }
    
    @IBAction func goToT2V4(_ sender: Any) {
        delegate?.goToT2V4()
    }
}
