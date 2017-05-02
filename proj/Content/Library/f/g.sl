namespace: f
flow:
  name: g
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      g:
        x: 78
        y: 234
        navigate:
          0858b512-f6dd-3871-6eb2-abea94c8394d:
            targetId: 1a86c18b-ff7b-276d-88fb-722da98099e9
            port: SUCCESS
    results:
      FAILURE:
        a940c79f-de6c-fb1f-45ad-d3fe1553d47b:
          x: 232
          y: 92
      SUCCESS:
        1a86c18b-ff7b-276d-88fb-722da98099e9:
          x: 254
          y: 405
