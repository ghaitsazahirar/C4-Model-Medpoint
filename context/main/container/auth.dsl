cAuth = container "Supabase Auth service" {
    description "Backend to handle authn/authz"
    technology "Supabase"

    comAuthEmailLogin = component "Auth Email Login" {
        description "Handle /login/email"
        -> comDatabase "matching databse for auth"
        -> comDatabaseAdminTable "check if admin's role match"
        -> comDatabaseUserTable "users auth"
    }
}
