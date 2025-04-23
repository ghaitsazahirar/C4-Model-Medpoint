comRestReservation = component "Reservation RESTful endpoint" {
  description "Handle /api/v1/reservation"
  technology "Supabase"

    -> comDatabaseReservationTable "Reservation data management"
    -> ssExternalMessaging "Doint notification for reservation"
    -> ssExternalPayment "Doint payment to external gateway"
}