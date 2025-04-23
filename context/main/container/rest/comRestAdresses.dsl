comRestAddresses = component "Addresses RESTful endpoint" {
  description "Handle /api/v1/addresses"
  technology "Supabase"

    -> comDatabaseAddressesTable "Address data management"
}