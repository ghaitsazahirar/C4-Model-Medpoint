comUserReservation = component "Book Reservation and Canceled Reservation" {
    description "Reservation and Canceled schedule Medical checkup for users"

    -> ssExternalPayment "users doing payment after booking schedule for medical checkup"
}