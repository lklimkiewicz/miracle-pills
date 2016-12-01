//
//  ViewController.swift
//  MiraclePill
//
//  Created by Łukasz Klimkiewicz on 01.12.2016.
//  Copyright © 2016 Łukasz Klimkiewicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //stany
    @IBOutlet weak var statePicker: UIPickerView!
    
    
    //state array 
    let states = ["Alaska", "Arkansas","Oio"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource  = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showStateSelect(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
}

