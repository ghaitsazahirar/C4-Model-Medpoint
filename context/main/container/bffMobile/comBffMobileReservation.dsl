comBffMobileReservation = component "Bff Mobile Reservation" {
    description "Handle /reservation"
    technology "Raiden"

    -> comRestReservation "Doint Reservation for medical checkup"
}