namespace: fold
flow:
  name: f
  workflow:
    - length:
        do:
          io.cloudslang.base.lists.length: []
        navigate:
          - FAILURE: on_failure
    - get_header_value:
        do:
          io.cloudslang.base.http.get_header_value: []
        navigate:
          - FAILURE: on_failure
    - get_header_value_1:
        do:
          io.cloudslang.base.http.get_header_value: []
        navigate:
          - FAILURE: on_failure
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      length:
        x: 147
        y: 185
      get_header_value:
        x: 387
        y: 354
      get_header_value_1:
        x: 86
        y: 289
      http_client_get:
        x: 51
        y: 376
