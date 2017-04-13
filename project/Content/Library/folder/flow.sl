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
        x: 542
        y: 189
        navigate:
          536608ea-b0f1-f0f7-af7c-3ca97b8665a3:
            targetId: 2c022496-7c2f-afe8-0539-d0d50cc0d921
            port: GREATER_THAN
          ece880f6-f114-d488-79ba-42290878910b:
            targetId: cdd9a2b2-bb65-390d-7a11-2ca7ca95e9b3
            port: EQUALS
          d35c8b17-506c-8929-dca9-44b1f8b179cc:
            targetId: 370c4955-ca87-79a5-eab6-092415122044
            port: LESS_THAN
    results:
      SUCCESS:
        2c022496-7c2f-afe8-0539-d0d50cc0d921:
          x: 400
          y: 116.66666666666667
      SAME:
        cdd9a2b2-bb65-390d-7a11-2ca7ca95e9b3:
          x: 400
          y: 350
      FAILURE:
        370c4955-ca87-79a5-eab6-092415122044:
          x: 400
          y: 583.3333333333334
