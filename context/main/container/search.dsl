cSearch = container "Search" {
    description "Backend to handle notification"

!include reservation/comUserReservation.dsl

    comUsersSearch = component "Searching" {
        description "Handle searching before doing reservation"
        -> comUserReservation "Provide search results before reservation"
    }
}