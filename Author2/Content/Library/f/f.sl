namespace: f
flow:
  name: f
  workflow:
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: "${get_sp('SysProp1')}"
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      http_client_get:
        x: 30
        y: 164
