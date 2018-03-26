namespace: io.cloudslang.samples
flow:
  name: non_blocking_do_external
  workflow:
    - Non_Blocking:
        do_external:
          6f367007-6563-40e6-88ec-8b84197d398d: []
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Non_Blocking:
        x: 100
        y: 250
        navigate:
          b7e6a0da-b244-5a9c-b661-0ecb91a96233:
            targetId: a3a2c1f7-b6e3-27ab-fd4f-bc202975bd8c
            port: success
          cab12274-4095-b079-55c3-a1d4cb604ed6:
            targetId: 49b79d0f-2490-d72c-85c0-46f0c00713bb
            port: failure
    results:
      SUCCESS:
        a3a2c1f7-b6e3-27ab-fd4f-bc202975bd8c:
          x: 400
          y: 125
      FAILURE:
        49b79d0f-2490-d72c-85c0-46f0c00713bb:
          x: 400
          y: 375
