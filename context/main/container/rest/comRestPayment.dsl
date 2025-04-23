comRestPayment = component "Payment RESTful endpoint" {
  description "Handle /api/v1/payment"
  technology "Supabase"

    -> comDatabasePaymentTable "Payment data management"
    -> ssExternalPayment "handle payment into external gteway"
}