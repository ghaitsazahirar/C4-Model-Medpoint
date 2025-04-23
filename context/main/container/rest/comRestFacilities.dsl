comRestFacilities = component "Facilities RESTful endpoint" {
  description "Handle /api/v1/facilities"
  technology "Supabase"

    -> comDatabaseFacilitiesTable "Facilities data management"
}