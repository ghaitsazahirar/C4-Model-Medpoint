comBffWebSchedules = component "BFF Web for Schedules" {
    description "Handle /schedules"

    -> comRestSchedules "manage schedules for doctor"
}