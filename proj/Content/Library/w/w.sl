namespace: w
flow:
  name: w
  workflow:
    - w:
        do:
          w.w: []
        navigate:
          - SUCCESS: FAILURE
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      w:
        x: 18
        y: 121
        navigate:
          ae41c735-20e3-da2a-9695-974060ac5056:
            targetId: a40d6c6b-4109-277b-3f06-2f53ef1788b7
            port: SUCCESS
    results:
      FAILURE:
        a40d6c6b-4109-277b-3f06-2f53ef1788b7:
          x: 185
          y: 131
      SUCCESS:
        1c8633f4-cea6-20d7-f9ed-b24220009546:
          x: 25
          y: 223
