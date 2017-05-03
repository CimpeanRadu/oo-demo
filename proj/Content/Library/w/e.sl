namespace: w
flow:
  name: e
  workflow:
    - e:
        do:
          w.e: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      e:
        x: 60
        y: 165
    results:
      FAILURE:
        c94512f8-5c67-1759-2782-83f657b762a3:
          x: 199
          y: 169
