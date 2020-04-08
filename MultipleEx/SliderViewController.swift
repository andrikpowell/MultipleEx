//
//  SliderViewController.swift
//  MultipleEx
//
//  Created by Andrik on 4/8/20.
//  Copyright © 2020 Andrik. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
