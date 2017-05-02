namespace: f
flow:
  name: g
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      g:
        x: 20
        y: 189
        navigate:
          cb94b809-85ee-1cdc-0fcf-68cf7100f691:
            targetId: 1a86c18b-ff7b-276d-88fb-722da98099e9
            port: SUCCESS
    results:
      FAILURE:
        a940c79f-de6c-fb1f-45ad-d3fe1553d47b:
          x: 202
          y: 196
      SUCCESS:
        1a86c18b-ff7b-276d-88fb-722da98099e9:
          x: 134
          y: 452
