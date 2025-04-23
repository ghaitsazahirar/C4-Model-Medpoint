comBffWebPayment = component "BFF Web for Payment" {
    description "Handle /payment"

    -> comRestPayment "manage payment from users patients"
}