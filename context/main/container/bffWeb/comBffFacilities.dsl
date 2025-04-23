comBffWebFacilities = component "BFF Web for Facilities" {
    description "Handle /facilities"

    -> comRestFacilities "manage facilities for doctor schedule"
}