//
//  ViewController.swift
//  UdacityTakehome
//
//  Created by Frank Garcia on 2/2/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://s3-us-west-2.amazonaws.com/udacity-mobile-interview/CardData.json"
        
        Alamofire.request(urlString) .responseJSON { response in
            print("Test1")
            if let cards = response.result.value as? [Dictionary<String, AnyObject>] {
                print("test2")
                if let firstName = cards[0]["firstName"] as? String {
                    print(firstName)
                }
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

