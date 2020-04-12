//
//  PickerViewController.swift
//  MultipleEx
//
//  Created by Andrik on 4/8/20.
//  Copyright © 2020 Andrik. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    //let items = ["Item1", "Item2", "Item3", "Item4"]
    
    //var selection:String!
    @IBOutlet weak var pickerVal: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return global.items.count
       }
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return global.items[row]
       }
       
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           global.selection = global.items[row]
        pickerVal.text = "Selection: " + global.selection
           global.pickerVar = global.selection
       }
    
    override func viewWillAppear(_ animated: Bool){
        pickerVal.text = "\(global.pickerVar)"
        if global.pickerVar == "item1" {
            picker.selectRow(1, inComponent: 0, animated: true)
        }
        else if global.pickerVar == "item2" {
            picker.selectRow(2, inComponent: 0, animated: true)
        }
        else
        {
            pickerVal.text = ""
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
