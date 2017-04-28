namespace: f
flow:
  name: g
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      g:
        x: 100
        y: 150
        navigate:
          9406efca-2ad5-ac82-48a8-c8ee283d539b:
            targetId: e053fa5f-aa1a-5fa7-b6e1-2c1a92875ce4
            port: SUCCESS
    results:
      SUCCESS:
        e053fa5f-aa1a-5fa7-b6e1-2c1a92875ce4:
          x: 400
          y: 150
