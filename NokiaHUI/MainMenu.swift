//
//  MainMenu.swift
//  NokiaHUI
//
//  Created by Mikhail Ivanov on 21/10/2018.
//  Copyright © 2018 Mikhail Ivanov. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MainMenu : UIViewController {
    
    @IBOutlet weak var NameAndAgeUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("\(ServerSetting().urlServer)/api/profile/info",
            method: .get).responseString { data in
                
                var json = JSON(parseJSON: data.result.value!)
                self.NameAndAgeUser.text = "\(json["firstName"]) \(json["lastName"])"
                }
        }
}

