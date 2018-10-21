//
//  ViewController.swift
//  NokiaHUI
//
//  Created by Mikhail Ivanov on 20/10/2018.
//  Copyright © 2018 Mikhail Ivanov. All rights reserved.
//

import UIKit
import Alamofire

class Auth : UIViewController {

    @IBOutlet weak var LoginField: UITextField!
    
    @IBOutlet weak var PassField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var isAuthorised : Bool = false
    @IBOutlet weak var test: UIButton!
    @IBAction func SingInButton(_ sender: Any) {
        let req: Parameters = [
            "Email": LoginField.text!,
            "Passw": PassField.text!
        ]
        
        let headers: HTTPHeaders = [
            "Content-Type": "application/json"
        ]
        Alamofire.request("\(ServerSetting().urlServer)/api/login/signin",
            method: .post,
            parameters: req, encoding: JSONEncoding.default,
            headers: headers).response { response in
                if(response.response?.statusCode == 200) {
                    self.performSegue(withIdentifier: "TestSeq", sender: self)
                } else if (response.response?.statusCode == 401) {
                    self.isAuthorised = false
                } else {
                    self.isAuthorised = false
                }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "TestSeq" {
            if isAuthorised == true {
                return true
            }
        } else if (identifier ==  "RegSeg") {
            return true
        }
        return false
    }
    
   
    
}
