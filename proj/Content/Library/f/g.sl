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
          a69ee950-303a-636d-c08f-059d4d1d711b:
            targetId: 2de92cb5-168c-0519-435c-16a5ec4f3fdd
            port: SUCCESS
    results:
      SUCCESS:
        2de92cb5-168c-0519-435c-16a5ec4f3fdd:
          x: 400
          y: 150
