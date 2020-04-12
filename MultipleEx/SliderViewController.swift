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
    
    let step: Float = 1

    
    @IBOutlet weak var sliderVal: UILabel!
    @IBOutlet weak var mySliderRef: UISlider!
    
    @IBAction func mySlider(_ sender: UISlider) {
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        global.sliderVar = Int(sender.value)
        sliderVal.text = "\(global.sliderVar)"
    }
    
    override func viewWillAppear(_ animated: Bool){
        sliderVal.text = "\(global.sliderVar)"
        if global.sliderVar == -1 {
            sliderVal.text = "Slider Value"
        }
        else
        {
            mySliderRef.setValue(Float(global.sliderVar), animated:true)
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
