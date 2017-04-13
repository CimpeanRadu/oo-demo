namespace: folder
flow:
  name: flow
  workflow:
    - compare_numbers:
        do:
          io.cloudslang.base.math.compare_numbers:
            - value1: "${get_sp('value1')}"
            - value2: '1'
        publish: []
        navigate:
          - GREATER_THAN: SUCCESS
          - EQUALS: SAME
          - LESS_THAN: FAILURE
  results:
    - SUCCESS
    - SAME
    - FAILURE
extensions:
  graph:
    steps:
      compare_numbers:
        x: 678
        y: 339
        navigate:
          21bf0a01-7949-775f-77c7-504bd8d56ae3:
            targetId: 98af1ce0-d37f-0a44-04f6-dcc53bb8672f
            port: GREATER_THAN
          0ec1d81e-ab3a-51bc-2075-b8c7180a5937:
            targetId: 08533bd2-2d8c-6861-5a9e-97e24639d554
            port: EQUALS
          acb21ebf-3e37-806a-45b2-17d6076ca3ff:
            targetId: bb3aaa2e-4db9-2267-12a5-f419fca8c842
            port: LESS_THAN
    results:
      SUCCESS:
        98af1ce0-d37f-0a44-04f6-dcc53bb8672f:
          x: 400
          y: 116.66666666666667
      SAME:
        08533bd2-2d8c-6861-5a9e-97e24639d554:
          x: 400
          y: 350
      FAILURE:
        bb3aaa2e-4db9-2267-12a5-f419fca8c842:
          x: 400
          y: 583.3333333333334
