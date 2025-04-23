comBffWebServices = component "BFF Web for Services" {
    description "Handle /services"

    -> comRestServices "manage services from users patiens"
}