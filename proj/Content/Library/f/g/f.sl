namespace: f.g
flow:
  name: f
  workflow:
    - g:
        do:
          f.g.g: []
        navigate:
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 18
        y: 149
    results:
      SUCCESS:
        b0165c8e-4dcb-aa44-be66-80c8ca90428a:
          x: 61
          y: 100
