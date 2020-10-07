//
//  File.swift
//  
//
//  Created by Ramy Atalla on 2020-10-06.
//

import Foundation
import Vapor

final class BookingsController {
    
    func create(_ req: Request) throws -> EventLoopFuture<NewBooking> {
        let booking = try req.content.decode(NewBooking.self)
        return booking.create(on: req.db).map { booking }
    }
    
    func all(_ req: Request) throws -> EventLoopFuture<[NewBooking]> {
        NewBooking.query(on: req.db).all()
    }
}
