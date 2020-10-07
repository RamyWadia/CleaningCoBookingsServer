import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.postgres(
        hostname: Environment.get("localhost") ?? "localhost",
        username: Environment.get("postgres") ?? "postgres",
        password: Environment.get("") ?? "vapor_password",
        database: Environment.get("cleaningcobookings") ?? "cleaningcobookings"
    ), as: .psql)
    
    app.migrations.add(CreateNewBooking())
    app.migrations.add(CreateNewMessage())

    // register routes
    try routes(app)
}
