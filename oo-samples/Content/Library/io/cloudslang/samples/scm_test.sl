namespace: io.cloudslang.samples
flow:
  name: scm_test
  workflow:
    - sensitive_inputs:
        do:
          io.cloudslang.samples.sensitive_inputs: []
        navigate:
          - SUCCESS: length
          - FAILURE: on_failure
    - length:
        do:
          io.cloudslang.base.lists.length:
            - list: '1,2,3'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 249
        y: 84
        navigate:
          d2af32a3-7ba5-757e-170c-1889486d3826:
            targetId: 304ba248-11cd-ec9d-85a4-2fd83b4a3015
            port: SUCCESS
      sensitive_inputs:
        x: 80
        y: 274
    results:
      SUCCESS:
        304ba248-11cd-ec9d-85a4-2fd83b4a3015:
          x: 400
          y: 150
