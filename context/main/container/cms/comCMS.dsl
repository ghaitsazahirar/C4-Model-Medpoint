comWebMobile = component "Web Auth" {
    technology "React, TypeScript, Go"
    tags "Web"
    description "Web Browser Auth."

    -> comBffAuth "Login via email&password for admin"
    -> comGlobalA "Admin accesses global features"

}