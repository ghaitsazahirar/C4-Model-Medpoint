dynamic cMobile {
    title "[Mobile][Auth] User Auth"
    description "Login and Register in Mobile Apps"

    pPatient -> comMobileLogin "Input email/password"
    comMobileLogin -> comBffMobileAuth "Request login via BFF"
    comBffMobileAuth -> comRestUser "Validate credentials"
    comRestUser -> comDatabaseUserTable "Query user by email"
    comRestUser -> comBffMobileAuth "Return user data or token"
    comBffMobileAuth -> comMobileLogin "Return login success/fail"
    autolayout lr
}
