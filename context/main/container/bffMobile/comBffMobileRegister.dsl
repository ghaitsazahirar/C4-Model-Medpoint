comBffMobileRegister = component "Bff Mobile Resgister" {
    description "Handle /register"
    technology "Raiden"

    -> comAuthEmailRegister "register users"
    -> comRestUser "Get user"
}