//
//  ViewController.swift
//  MultiSpecsDemo
//
//  Created by Felipe Lefèvre Marino on 11/25/18.
//  Copyright © 2018 Felipe Marino. All rights reserved.
//

import UIKit
import MultiSpecs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testMultiSpecsExtensionsSubspec()
    }
    
    private func testMultiSpecsExtensionsSubspec() {
        view.backgroundColor = UIColor(hexString: "#ffffff") ?? .white
    }
}

