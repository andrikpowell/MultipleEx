//
//  ViewController.swift
//  MultipleEx
//
//  Created by Andrik on 4/8/20.
//  Copyright © 2020 Andrik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var navView: UIView!
     
    @IBAction func clickMenu(_ sender: Any) {
        if(navView.isHidden) {
            navView.isHidden = false
        }
        else {
            navView.isHidden = true
        }
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        navView.isHidden = true
    }


}

