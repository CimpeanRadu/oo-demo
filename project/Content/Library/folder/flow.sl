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
        x: 655
        y: 216
        navigate:
          7bd23403-0a86-972e-caaf-37d48056904e:
            targetId: 6311b8a5-be3b-38b6-90ed-4341678365f4
            port: GREATER_THAN
          f1401ccf-6922-bd21-ebd2-f16312234b5e:
            targetId: f04853be-1d83-c478-fbd2-9396cdb41e33
            port: EQUALS
          296e3382-8989-5eae-43e3-b696fda03170:
            targetId: d6cb8187-8030-bd7b-9af9-ce85f93695b7
            port: LESS_THAN
    results:
      SUCCESS:
        6311b8a5-be3b-38b6-90ed-4341678365f4:
          x: 697
          y: 489
      SAME:
        f04853be-1d83-c478-fbd2-9396cdb41e33:
          x: 400
          y: 350
      FAILURE:
        d6cb8187-8030-bd7b-9af9-ce85f93695b7:
          x: 400
          y: 583.3333333333334
