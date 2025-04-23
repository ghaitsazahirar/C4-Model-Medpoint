comBffMobileAuth = component "Bff Mobile Auth" {
    description "Handle /auth"
    technology "Raiden"

    -> comAuthEmailLogin "Call login with email endpoint"
    -> comRestUser "Get user"
}