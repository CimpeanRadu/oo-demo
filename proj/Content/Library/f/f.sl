namespace: f
flow:
  name: f
  workflow:
    - f:
        do:
          f.f: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      f:
        x: 221
        y: 58
        navigate:
          3792faa0-2c07-bc42-28ba-3fbb3672d4bc:
            targetId: 514e0e4d-82c1-91cc-5c3c-b1e8e22eaca5
            port: SUCCESS
    results:
      FAILURE:
        30d24956-a43c-7c74-e0f6-b2918b8c0be4:
          x: 182
          y: 217
      SUCCESS:
        514e0e4d-82c1-91cc-5c3c-b1e8e22eaca5:
          x: 39
          y: 115
