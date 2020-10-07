//
//  File.swift
//  
//
//  Created by Ramy Atalla on 2020-10-06.
//

import Foundation
import Fluent
import Vapor

final class NewBooking: Model, Content {
    
    static let schema = "Bookings"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "phone")
    var phone: String
    
    @Field(key: "adress")
    var adress: String
    
    @Field(key: "date")
    var date: String
    
    @Field(key: "hasGateCode")
    var hasGateCode: String
    
    @Field(key: "howDidYouKnowAboutUs")
    var howDidYouKnowAboutUs: String
    
    init() {}
    
    init(id: UUID? = nil, name: String, email: String, phone: String, adress: String, date: String, hasGateCode: String, howDidYouKnowAboutUs: String) {
        
        self.id = id
        self.name = name
        self.email = email
        self.phone = phone
        self.adress = adress
        self.date = date
        self.hasGateCode = hasGateCode
        self.howDidYouKnowAboutUs = howDidYouKnowAboutUs
    }
}

