namespace: f
flow:
  name: g
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 26
        y: 303
    results:
      FAILURE:
        a940c79f-de6c-fb1f-45ad-d3fe1553d47b:
          x: 122
          y: 152
