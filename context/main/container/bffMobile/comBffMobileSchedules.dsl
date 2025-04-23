comBffMobileSchedules = component "Bff Mobile Schedules" {
    description "Handle /schedules"
    technology "Raiden"

    -> comRestReservation "Read Schedules for medical checkup"
}