//
//  File.swift
//  
//
//  Created by Ramy Atalla on 2020-10-06.
//

import Foundation
import Vapor

final class MessageController {
    func create(_ req: Request) throws -> EventLoopFuture<NewMessage> {
        let message = try req.content.decode(NewMessage.self)
        return message.create(on: req.db).map { message }
    }
    
    func all(_ req: Request) throws -> EventLoopFuture<[NewMessage]> {
        NewMessage.query(on: req.db).all()
    }
}
