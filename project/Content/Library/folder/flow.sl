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
        x: 92
        y: 168
        navigate:
          d61e0fed-a3af-7a32-48b8-335f22727449:
            targetId: 168fbf69-9108-ab18-0950-36e6ee6aa7f9
            port: GREATER_THAN
            vertices: []
          ac0f11b5-d1eb-2568-3418-db43d1126141:
            targetId: b1df0737-21cc-521b-ff1d-870ed6dcc15f
            port: EQUALS
          6135bf8d-1483-d643-e653-ac045ee46fdf:
            targetId: 55e97eb6-b48f-6d39-56a0-938986b0eccf
            port: LESS_THAN
    results:
      SUCCESS:
        168fbf69-9108-ab18-0950-36e6ee6aa7f9:
          x: 400
          y: 116.66666666666667
      SAME:
        b1df0737-21cc-521b-ff1d-870ed6dcc15f:
          x: 400
          y: 350
      FAILURE:
        55e97eb6-b48f-6d39-56a0-938986b0eccf:
          x: 400
          y: 583.3333333333334
