package authz

default allow := false

# Allow if token has a valid roles
allow {
    input.role == "admin"
}

allow {
    input.role == "user"
    input.method == "GET"
}

# Public paths always allowed
allow {
    input.path == "/health"
}
