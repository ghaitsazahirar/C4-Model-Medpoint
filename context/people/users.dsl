pPatient = person "Patients" {
    description "Users who make medical reservations, cancel reservations, make transactions and receive notifications." 

    -> comMobileLogin "User can Login an accont using Form Login to access Mobile Apps"
    -> comMobileRegister "User can Register an accont using Form Register to access Mobile Apps"
    -> comMobileSchedules "User can read the schedules from database to choose schecule medcheck"
    -> comMobileReservation "User can book a reservation medcheck"
    -> comMobileServices "User can choose their services of medcheck"
    -> comMobileProfile "Users always can edit their profile"
}

pAdmin = person "Admin" {
    description "Manage master data, schedules, reservation slots and payments."

    -> comCmsLogin "Admin Login with email and password"
    -> comCmsDoctor "Admin can CRUD for this doctor listing"
    -> comCmsFacilities "Admin can CRUD this facilities before or after add doctor listing"
    -> comCmsReservation "Admin can manage the reservation schedules of medcheck patients"
    -> comCmsPayment "Admin can manage payments from patients"
}

pSuperAdmin = person "SuperAdmin" {
    description "Manage all master data and user access rights."

    -> comCmsLogin "Super Admin Login with email and password credential"
    -> comCmsDoctor "Super Admin can manage CRUD for doctor listing"
    -> comCmsFacilities "Super Admin can manage CRUD from facilities listing"
    -> comCmsAddresses "Super Admin can manage CRUD from addresses listing"
    -> comCmsPayment "Super Admin can manage from payments listing"
    -> comCmsPoli "Super Admin can manage CRUD from poli listing"
    -> comCmsReservation "Super Admin can manage from reservation listing"
    -> comCmsSchedules "Super Admin can manage CRUD from schedules listing"
    -> comCmsServices "Super Admin can manage CRUD from services listing"
    -> comCmsUsers "Super Admin can manage CRUD from users listing"
}

pDoctor = person "Doctor" {
    description "Providing reservation slots, approving reservations, providing consultations and prescriptions."

    -> comCmsLogin "Doctor Login with email and password credentials"
    -> comCmsDoctor "Doctor can Read their profile"
    -> comCmsSchedules "Doctor can manage their schedules"
    -> comCmsReservation "Doctor can manage their patiens schedules"
}