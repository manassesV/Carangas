//
//  ViewController.swift
//  Carangas
//
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {
    
    @IBOutlet weak var lbBrand: UILabel!
    @IBOutlet weak var lbGasType: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var loading: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
