comRestProfile = component "Profile RESTful endpoint" {
  description "Handle /api/v1/patients"
  technology "Supabase"

    -> comDatabaseUserTable "manage user's profile"
}