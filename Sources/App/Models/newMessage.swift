//
//  File.swift
//  
//
//  Created by Ramy Atalla on 2020-10-06.
//

import Foundation
import Fluent
import Vapor

final class NewMessage: Model, Content {
    
    static let schema = "Messages"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "firstname")
    var firstname: String
    
    @Field(key: "lastname")
    var lastname: String
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "phonenumber")
    var phonenumber: String
    
    @Field(key: "message")
    var message: String
    
    init() {}
    
    init(id: UUID? = nil, firstname: String, lastname: String, email: String, phonenumber: String, message: String) {
        
        self.id = id
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.phonenumber = phonenumber
        self.message = message
    }
}
