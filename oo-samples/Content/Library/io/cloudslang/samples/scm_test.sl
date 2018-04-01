namespace: io.cloudslang.samples
flow:
  name: scm_test
  workflow:
    - sensitive_inputs:
        do:
          io.cloudslang.samples.sensitive_inputs: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      sensitive_inputs:
        x: 48
        y: 106
        navigate:
          07c8171d-1561-d3bf-ee97-3f7af59bb461:
            targetId: 304ba248-11cd-ec9d-85a4-2fd83b4a3015
            port: SUCCESS
    results:
      SUCCESS:
        304ba248-11cd-ec9d-85a4-2fd83b4a3015:
          x: 400
          y: 150
