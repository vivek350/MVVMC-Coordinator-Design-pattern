//
//  T2V2ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/21/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T2V2ViewControllerDelegate: class {
    func goToT2V3()
}

class T2V2ViewController: UIViewController {
    
    weak var delegate: T2V2ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T2V2"
    }

    @IBAction func goToT2V3(_ sender: Any) {
        delegate?.goToT2V3()
    }
}
