//
//  T2V1ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T2V1ViewControllerDelegate: class {
    func goToT2V2()
}

class T2V1ViewController: UIViewController {
    
    weak var delegate: T2V1ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T2V1"
    }

    @IBAction func goToT2V2(_ sender: Any) {
        delegate?.goToT2V2()
    }
}
