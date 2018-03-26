namespace: io.cloudslang.samples
flow:
  name: step_persistence_wrap
  workflow:
    - Full_Step_Persistence:
        do_external:
          4bbd79d4-3346-496c-8309-4a7e8ab100a3:
            - input_0:
                value: qeqweq
                sensitive: true
        navigate:
          - success: SUCCESS
          - failure: FAILURE
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Full_Step_Persistence:
        x: 100
        y: 250
        navigate:
          39361c82-6479-dc85-1fee-4102896cfea6:
            targetId: fa98abe6-0a22-acaf-4d6c-764d931f2edf
            port: success
          a43bcbc1-929a-b492-bbf4-d5c8b048f275:
            targetId: 7f1ffca5-2936-e575-6e53-d2b4bdee0bcb
            port: failure
    results:
      SUCCESS:
        fa98abe6-0a22-acaf-4d6c-764d931f2edf:
          x: 400
          y: 125
      FAILURE:
        7f1ffca5-2936-e575-6e53-d2b4bdee0bcb:
          x: 400
          y: 375
