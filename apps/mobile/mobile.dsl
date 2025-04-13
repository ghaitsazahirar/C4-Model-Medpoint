dynamic cMobile {
    title "[Mobile] User Login"
    description "Diagram untuk proses login pengguna di Mobile Apps"

    pPatient -> comMobileLogin "Input email/password"
    comMobileLogin -> comBffAuth "Request login via BFF"
    comBffAuth -> comRestUser "Validate credentials"
    comRestUser -> comDatabaseUserTable "Query user by email"
    comRestUser -> comBffAuth "Return user data or token"
    comBffAuth -> comMobileLogin "Return login success/fail"
    autolayout lr
}
