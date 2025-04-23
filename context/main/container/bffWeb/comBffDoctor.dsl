comBffWebDoctor = component "BFF Web for Doctor" {
    description "Handle /doctor"

    -> comRestDoctor "manage doctor listing"
}