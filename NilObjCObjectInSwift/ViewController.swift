//
//  ViewController.swift
//  NilObjCObjectInSwift
//
//  Created by David Wagner on 03/09/2019.
//  Copyright © 2019 David Wagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var nilLabel: UILabel!
    
    var nilProvider: StringProviding?
    var helloProvider: StringProviding?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nilProvider = NilStringProvider()
        helloProvider = HelloWorldStringProvider()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let helloProvider = helloProvider, let nilProvider = nilProvider else {
            helloLabel.text = "Failed to get providers"
            nilLabel.text = helloLabel.text
            return
        }
        
        helloLabel.text = helloProvider.string().uppercased()
        nilLabel.text = nilProvider.string().uppercased()
    }

}

