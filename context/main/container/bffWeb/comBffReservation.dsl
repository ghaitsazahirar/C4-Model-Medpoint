comBffWebReservation = component "BFF Web for Reservation" {
    description "Handle /reservation"

    -> comRestReservation "manage reservation from users patients"
}