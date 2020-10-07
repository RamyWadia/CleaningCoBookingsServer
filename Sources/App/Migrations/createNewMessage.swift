//
//  File.swift
//  
//
//  Created by Ramy Atalla on 2020-10-06.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateNewMessage: Migration {
    
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(NewMessage.schema)
            .id()
            .field("firstname", .string)
            .field("lastname", .string)
            .field("email", .string)
            .field("phonenumber", .string)
            .field("message", .string)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("Messages").delete()
    }
    
}
