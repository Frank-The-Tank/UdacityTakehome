//
//  Card.swift
//  UdacityTakehome
//
//  Created by Frank Garcia on 2/2/18.
//  Copyright © 2018 Frank Garcia. All rights reserved.
//

import Foundation

class Card {
    
    private var _lastName: String!
    private var _firstName: String!
    private var _email: String!
    private var _company: String!
    private var _startDate: String!
    private var _bio: String!
    private var _avatar: String!
    
    var lastName: String {
        return _lastName
    }
    
    var firstName: String {
        return _firstName
    }
    
    var email: String {
        return _email
    }
    
    var company: String {
        return _company
    }
    
    var startDate: String {
        return _startDate
    }
    
    var bio: String {
        return _bio
    }
    
    var avatar: String {
        return _avatar
    }
    
    init(lastName: String, firstName: String, email: String, company: String, startDate: String, bio: String, avatar: String) {
        self._lastName = lastName
        self._firstName = firstName
        self._email = email
        self._company = company
        self._startDate = startDate
        self._bio = bio
        self._avatar = avatar
    }
    
}
