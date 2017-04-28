namespace: f
flow:
  name: f
  workflow:
    - parse_date:
        do:
          io.cloudslang.base.datetime.parse_date: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      parse_date:
        x: 82
        y: 134
