//
//  MainMenu.swift
//  NokiaHUI
//
//  Created by Mikhail Ivanov on 20/10/2018.
//  Copyright © 2018 Mikhail Ivanov. All rights reserved.
//

import UIKit
import Alamofire

class Registration : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sex.count
    }
    
    
    @IBOutlet weak var Data: UIDatePicker!
    @IBOutlet weak var sexPicker: UIPickerView!
    let sex = ["Male", "Female"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Data.backgroundColor = UIColor.white
        
        sexPicker.delegate = self
        sexPicker.dataSource = self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sex[row]
    }
    
    @IBAction func SingUpButton(_ sender: Any) {
        
    }
    
}
