comBffMobileServices = component "Bff Mobile Services" {
    description "Handle /services"
    technology "Raiden"

    -> comRestServices "Services data manage"
}