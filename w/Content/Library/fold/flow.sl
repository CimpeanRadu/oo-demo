namespace: fold
flow:
  name: flow
  workflow:
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      http_client_get:
        x: 100
        y: 150
        navigate:
          260d0cd5-fdda-6480-1baf-b7c9839b3444:
            targetId: 203ece92-2e3e-7058-b806-d4de6ca9daa8
            port: SUCCESS
    results:
      SUCCESS:
        203ece92-2e3e-7058-b806-d4de6ca9daa8:
          x: 400
          y: 150
