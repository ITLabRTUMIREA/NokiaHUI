//
//  MainMenu.swift
//  NokiaHUI
//
//  Created by Mikhail Ivanov on 20/10/2018.
//  Copyright © 2018 Mikhail Ivanov. All rights reserved.
//

import UIKit
import Alamofire

class Registration : UIViewController {
    
    @IBOutlet weak var Data: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Data.backgroundColor = UIColor.white
    }
    
}
