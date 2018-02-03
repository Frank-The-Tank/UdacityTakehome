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
    
    @IBOutlet weak var background: UIView!    
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var bioText: UITextView!
    @IBOutlet weak var avatarView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioLabel.text = "Bio:"
        
        let urlString = "https://s3-us-west-2.amazonaws.com/udacity-mobile-interview/CardData.json"
        
        Alamofire.request(urlString) .responseJSON { response in
            print("Test1")
            if let cards = response.result.value as? [Dictionary<String, AnyObject>] {
                print("test2")
                for card in cards {
                    if let firstName = card["firstName"] as? String  {
                        self.nameLabel.text = firstName
                        print("First name:" + firstName) // Confirmation all of the names are being pulled out of the JSON data
                    }
                    if let email = card["email"] as? String  {
                        self.emailLabel.text = email
                    }
                    if let company = card["company"] as? String  {
                        self.companyLabel.text = company
                    }
                    if let startDate = card["startDate"] as? String  {
                        self.startDateLabel.text = startDate
                    }
                    if let bio = card["bio"] as? String  {
                        self.bioText.text = bio
                    }
                    if let avatar = card["avatar"] as? String  {
//                        self.avatarView.addSubview(<#T##view: UIView##UIView#>)
                    }
                }
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

