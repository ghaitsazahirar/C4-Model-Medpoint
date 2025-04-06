dynamic cMobile {
    title "[Mobile] User's Fitur"
    description "Diagram untuk proses login dan registrasi pengguna di Mobile Apps"

    pPatient -> comMobileLogin "Login with email/password"
    comMobileLogin -> comBffAuth "Request login via BFF"
    comBffAuth -> comRestUser "Check if user already exists"
    comRestUser -> comDatabaseUserTable "Query user data from PostgreSQL"
    comDatabaseUserTable -> comUsersSearch "User can start searching for booking reservation schedule medical checkup or canceled"
    comUsersSearch -> comUserReservation "Users booking a reserfor for vation schedule for medical checkup"
    comUserReservation -> ssExternalPayment "Users doing payment after book reservation"
    autolayout lr
}
