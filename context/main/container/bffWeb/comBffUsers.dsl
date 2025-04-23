comBffWebUsers = component "BFF Web for Users Management" {
    description "Handle /users"

    -> comRestUser "manage users management"
}