package authz

default allow := false

# Allow if token has a valid roles
allow if {
    input.role == "admin"
}

allow if {
    input.role == "user"
    input.method == "GET"
}

# Public paths always allowed
allow if {
    input.path == "/health"
}
