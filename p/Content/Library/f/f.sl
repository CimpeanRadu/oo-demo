namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 100
        y: 150
        navigate:
          3173ccbc-37da-211d-1b6c-11b65e966df6:
            targetId: c4f0094f-b9ac-cbf5-b2e7-5b25eeecb24a
            port: SUCCESS
    results:
      SUCCESS:
        c4f0094f-b9ac-cbf5-b2e7-5b25eeecb24a:
          x: 400
          y: 150
