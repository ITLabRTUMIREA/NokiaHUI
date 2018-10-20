//
//  ViewController.swift
//  NokiaHUI
//
//  Created by Mikhail Ivanov on 20/10/2018.
//  Copyright © 2018 Mikhail Ivanov. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var LoginField: UITextField!
    
    @IBOutlet weak var PasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SingInButton(_ sender: Any) {
        
        Alamofire.request("http://192.168.80.188:5000/api/values").responseString { response in
            print("Response String: \(response.result.value)")
            }
            .responseJSON { response in
                print("Response JSON: \(response.result.value)")
        }
    }
}

