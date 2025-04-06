ssMedpoint = softwareSystem "Medpoint System" {
    description "Online Reservation system"


    //searching for users after auth
    !include container/search.dsl
    
    // resource
    !include container/database.dsl

    //searching for users after auth
    !include container/globalA.dsl
    
    // supabase
    !include container/auth.dsl
    !include container/rest.dsl

    // bff
    !include container/bff.dsl

    // FE (mobile/web)
    !include container/mobile.dsl
    !include container/web.dsl


}
