//
//  File.swift
//  
//
//  Created by Ramy Atalla on 2020-10-06.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateNewBooking: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema(NewBooking.schema)
            .id()
            .field("name", .string)
            .field("email", .string)
            .field("phone", .string)
            .field("adress", .string)
            .field("date", .string)
            .field("hasGateCode", .string)
            .field("howDidYouKnowAboutUs", .string)
            .create()
    }
    
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("Bookings").delete()
    }
}
