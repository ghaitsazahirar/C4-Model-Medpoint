dynamic cWeb {
    title "User Story: Admin Role via Web CMS"
    description "Admin manages master data, schedules, reservation slots, and payments"
    pAdmin -> comWebMobile "Login to CMS"
    comWebMobile -> comBffAuth "Authenticate Super Admin"
    comBffAuth -> comRestUser "Get Super Admin data"
    comRestUser -> comDatabaseAdminTable "Read Super Admin data"

    comWebMobile -> comGlobalA "Access Super Admin Features"

    comGlobalA -> comMasterData "Manage all master data (facilities, services, schedules)"
    comGlobalA -> comUserManagement "Manage user access and roles"
    comGlobalA -> comNotificationManagement "Receive notifications"

    autolayout tb
}

dynamic cWeb {
    title "User Story: Super Admin Role"
    description "Super Admin manages all master data and user access rights"

    psuperAdmin -> comWebMobile "Login to CMS"
    comWebMobile -> comBffAuth "Authenticate Admin credentials"
    comBffAuth -> comRestUser "Get Admin data"
    comRestUser -> comDatabaseAdminTable "Check Admin role & info"

    comWebMobile -> comGlobalA "Access Admin Features"

    comGlobalA -> comMasterData "Manage facilities, services, poli schedule"
    comGlobalA -> comReservationManagement "Manage schedules and reservation slots"
    comGlobalA -> comPaymentManagement "Process and monitor payments"
    comGlobalA -> comNotificationManagement "Receive notifications"
    comGlobalA -> comDoctorManagement "View doctor availability (optional)"

    autolayout tb
}

dynamic cWeb {
    title "User Story: Doctor Role in Web CMS"
    description "Doctor manages availability, approves reservations, provides consultation and prescriptions"

    pDokter -> comWebMobile "Login to CMS"
    comWebMobile -> comBffAuth "Authenticate Doctor"
    comBffAuth -> comRestUser "Fetch doctor profile"
    comRestUser -> comDatabaseAdminTable "Verify Doctor identity"

    comWebMobile -> comGlobalA "Access Doctor Features"

    comGlobalA -> comReservationManagement "Provide slots and approve reservations"
    comGlobalA -> comNotificationManagement "Receive appointment or system notifications"
    comGlobalA -> comEPrescription "Write and send prescriptions to patients"

    autolayout tb
}
