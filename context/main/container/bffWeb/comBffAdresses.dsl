comBffWebAddresses = component "BFF Web for Addresses" {
    description "Handle /addresses"

    -> comRestAddresses "manage addresses for facilities"
}