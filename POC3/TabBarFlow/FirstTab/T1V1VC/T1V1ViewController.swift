//
//  T1V1ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/20/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T1V1ViewControllerDelegate: class {
    func goToT1V2()
}

class T1V1ViewController: UIViewController {
    
    weak var delegate: T1V1ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T1V1"
    }
    
    @IBAction func goToT1V2(_ sender: Any) {
        delegate?.goToT1V2()
    }
}
