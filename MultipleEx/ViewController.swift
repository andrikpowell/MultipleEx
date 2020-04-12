//
//  ViewController.swift
//  MultipleEx
//
//  Created by Andrik on 4/8/20.
//  Copyright © 2020 Andrik. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = -1
    var pickerVar = String()
    var selection = String()
    let items = ["Item1", "Item2", "Item3", "Item4"]
}
let global = Global()

class ViewController: UIViewController {
    @IBOutlet weak var theName: UILabel!
    @IBOutlet weak var theSwitch: UILabel!
    @IBOutlet weak var theSlider: UILabel!
    @IBOutlet weak var thePicker: UILabel!
    @IBOutlet weak var myName: UITextField!
    @IBAction func myButton(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        nameCheck()
        switchCheck()
        sliderCheck()
        pickerCheck()
    }
    
    func nameCheck(){
        if global.nameVar == "" {
            theName.text = ""
        }
        else {
            theName.text = "Name: \(global.nameVar)"
        }
    }
    
    func switchCheck(){
        if global.switchVar == "" {
            theSwitch.text = ""
        }
        else {
            theSwitch.text = "Switch: \(global.switchVar)"
        }
    }
    func sliderCheck(){
        if global.sliderVar == -1 {
            theSlider.text = ""
        }
        else {
            theSlider.text = "Slider: \(global.sliderVar)"
        }
    }
    func pickerCheck(){
        if global.pickerVar == "" {
            thePicker.text = ""
        }
        else {
            thePicker.text = "Picker: \(global.pickerVar)"
        }
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

