//
//  SwitchViewController.swift
//  MultipleEx
//
//  Created by Andrik on 4/8/20.
//  Copyright © 2020 Andrik. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //global.switchVar = "off"
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var switchVal: UILabel!
    
    @IBOutlet weak var mySwitchRef: UISwitch!
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
                 global.switchVar = "on"
              }
              else {
                 global.switchVar = "off"
              }
        switchVal.text = global.switchVar
    }
    
    override func viewWillAppear(_ animated: Bool){
        switchVal.text = "\(global.switchVar)"
        if global.switchVar == "" {
            switchVal.text = "Switch Value"
        }
        else if global.switchVar == "on"
        {
            mySwitchRef.isOn = true
        }
        else {
            mySwitchRef.isOn = false
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
