//
//  ViewController.swift
//  jenkinsapp
//
//  Created by mescurra on 6/8/18.
//  Copyright © 2018 mescurra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerview1: UIPickerView!
    

    @IBOutlet weak var pickerview2: UIPickerView!
    
    @IBOutlet weak var labelResult: UILabel!
    
    var timeTable: TimeTable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.loadPickerView()
        print("load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPickerView(){
        self.pickerview1.selectRow(4, inComponent: 0, animated: false)
        self.pickerview2.selectRow(4, inComponent: 0, animated: false)
        self.labelResult.text = "16"
        timeTable = TimeTable()
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let val1 = pickerview1.selectedRow(inComponent: 0)
        let val2 = pickerview2.selectedRow(inComponent: 0)
        
        labelResult.text = "\(timeTable.multiply(val1, b: val2))"
    }



}

