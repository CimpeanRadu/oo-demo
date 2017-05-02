namespace: f.g
flow:
  name: g
  workflow:
    - g:
        do:
          f.g.g: []
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
        x: 41
        y: 70
        navigate:
          dea7dd7d-2238-59ff-cf42-b713458cb9ac:
            targetId: 3db35d09-b4ba-db95-c0ed-ef6e98fe129e
            port: SUCCESS
    results:
      SUCCESS:
        3db35d09-b4ba-db95-c0ed-ef6e98fe129e:
          x: 278
          y: 103
