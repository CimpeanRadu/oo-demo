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
        x: 100
        y: 350
        navigate:
          86b98562-478f-b97e-aab4-b6ec4fd8b26b:
            targetId: 4a0aa3f2-e498-9603-80b4-f9089b84dc83
            port: GREATER_THAN
          4dd4476f-9b07-fc53-c8bb-c89a326d8b18:
            targetId: b2cc6f24-50d8-3be5-5550-a49b8244e489
            port: EQUALS
          fbdd5648-4467-2ce4-cc5a-b873455d58fc:
            targetId: 0e59fdfa-4def-f5ff-deda-d0451aaa9be7
            port: LESS_THAN
    results:
      SUCCESS:
        4a0aa3f2-e498-9603-80b4-f9089b84dc83:
          x: 400
          y: 116.66666666666667
      SAME:
        b2cc6f24-50d8-3be5-5550-a49b8244e489:
          x: 400
          y: 350
      FAILURE:
        0e59fdfa-4def-f5ff-deda-d0451aaa9be7:
          x: 400
          y: 583.3333333333334
