comRestPoli = component "Poli RESTful endpoint" {
  description "Handle /api/v1/poli"
  technology "Supabase"

    -> comDatabasePoliTable "Poli data management"
}