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
        x: 722
        y: 307
        navigate:
          4fd38855-21c9-3751-6e98-3ad81937b6d3:
            targetId: 6cfc2d44-7600-4f17-4d4e-c0f5dbf536da
            port: GREATER_THAN
          b525a829-43d6-8016-4181-b674816df27e:
            targetId: da19ee0c-ccaf-7109-a337-0a8917bdc4e9
            port: EQUALS
          59d6f423-9898-f982-9494-7d478b2986cf:
            targetId: 610cb0a2-9754-5b96-307f-fff7e2648b06
            port: LESS_THAN
    results:
      SUCCESS:
        6cfc2d44-7600-4f17-4d4e-c0f5dbf536da:
          x: 400
          y: 116.66666666666667
      SAME:
        da19ee0c-ccaf-7109-a337-0a8917bdc4e9:
          x: 497
          y: 282
      FAILURE:
        610cb0a2-9754-5b96-307f-fff7e2648b06:
          x: 400
          y: 583.3333333333334
