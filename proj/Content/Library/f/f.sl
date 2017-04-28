namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 38
        y: 55
        navigate:
          f42f9874-7718-f4ec-13b7-d324994be7af:
            targetId: 0c894bcb-9388-a2ac-e204-f12bcc37de90
            port: SUCCESS
    results:
      SUCCESS:
        0c894bcb-9388-a2ac-e204-f12bcc37de90:
          x: 189
          y: 233
