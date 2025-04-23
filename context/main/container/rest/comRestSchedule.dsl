comRestSchedules = component "Schedules RESTful endpoint" {
  description "Handle /api/v1/schedule"
  technology "Supabase"

    -> comDatabaseSchedulesTable "Schedules data management"
}