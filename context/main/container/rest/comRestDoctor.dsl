comRestDoctor = component "Doctor RESTful endpoint" {
  description "Handle /api/v1/doctor"
  technology "Supabase"

    -> comDatabaseDoctorTable "Doctor data management"
}