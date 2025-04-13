cDatabase = container "Database" {
    description "Stores all data for the application."
    tags "Database"
    technology "PostgreSQL"

    comDatabase = component "database" {
        description "Handle database"
        -> ssExternalAuth "Initiate Username/Password auth flow for admin"
        -> ssExternalMessaging "except notification or message after sucess auth for users"
        -> ssExternalPayment "Integrates with third-party payment gateway to handle user transactions after reservation"
    }

    !include database
}
