!include comNotificationManagement.dsl
!include comPaymentManagement.dsl
!include comReservationManagement.dsl
!include comDoctorManagement.dsl
!include comUserManagement.dsl
!include comMasterData.dsl
!include comEPrescription.dsl


comGlobalA = component "Fitur Global untuk Admin" {
    description "Menghubungkan fitur global untuk admin"
}

comGlobalA -> comNotificationManagement "Admin receive and read notification"
comGlobalA -> comPaymentManagement "Admin can view billing and validate payments"
comGlobalA -> comReservationManagement "Displays a list of reservations and can be managed by Super Admin such as Booking, Reschedule and Cancel Reservation."
comGlobalA -> comDoctorManagement "Displays a list of Doctor data that can be managed by the super admin."
comGlobalA -> comUserManagement "Admin can handle management database for users management"
comGlobalA -> comMasterData "Admin that can handle data"
comGlobalA -> comEPrescription "Admin that can handle Prescriptions"
ssExternalAuth -> comGlobalA "Admin can handle global fitured after sucessfull auth"