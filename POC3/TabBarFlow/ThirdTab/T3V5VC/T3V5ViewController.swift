//
//  T3V5ViewController.swift
//  POC3
//
//  Created by Vivek Gollapally on 12/26/17.
//  Copyright © 2017 Vivek Gollapally. All rights reserved.
//

import UIKit

protocol T3V5ViewControllerDelegate: class {
    
}

class T3V5ViewController: UIViewController {
    
    weak var delegate: T3V5ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "T3V5"
    }
}
