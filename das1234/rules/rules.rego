package rules

default allow = false

# allow GET /dogs/...
allow {
   input.attributes.request.http.method == "GET"
   parsed_path := data.libraries.ms_lib1.split_url(input.attributes.request.http.path)
   parsed_path[0] == "dogs"
}

# comment here