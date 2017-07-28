//
//  ViewController.swift
//  MiraclePill
//
//  Created by JanielHNY on 2017/7/17.
//  Copyright © 2017年 JanielHNY. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowbtn: UIButton!
    @IBOutlet weak var wholeView: UIView!
    
    let states = ["QLD", "NSW", "VIC", "NT", "WA", "Islanders", "Canberra"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func stateBtnPressed(sender: AnyObject) {
        
        statePicker.hidden = false
        
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], forState: UIControlState.Normal)
        
        statePicker.hidden = true
        
    }
    
    @IBAction func buyNowbtnPressed(sender: AnyObject) {
        wholeView.hidden = true
        
        
        
    
    }
    
    
}

