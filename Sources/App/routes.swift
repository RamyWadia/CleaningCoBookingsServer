import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let bookingController = BookingsController()
    app.post("Bookings", use: bookingController.create)
    app.get("Bookings", use: bookingController.all)
    
    let messegeController = MessageController()
    app.post("Messages", use: messegeController.create)
    app.get("Messages", use: messegeController.all)
}
