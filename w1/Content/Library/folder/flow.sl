namespace: folder
flow:
  name: flow
  workflow:
    - random_number_generator:
        parallel_loop:
          for: 'var in 1,2,3,4,5'
          do:
            io.cloudslang.base.math.random_number_generator:
              - min: '1'
              - max: '10'
        publish:
          - random_number: '${str(branches_context[0]["random_number"])}'
        navigate:
          - SUCCESS: compare_numbers
          - FAILURE: on_failure
    - compare_numbers:
        parallel_loop:
          for: x in random_number
          do:
            io.cloudslang.base.math.compare_numbers:
              - value1: '${random_number}'
              - value2: '5'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      random_number_generator:
        x: 100
        y: 150
      compare_numbers:
        x: 400
        y: 150
        navigate:
          cb7a0fc1-fa91-185d-d773-37f8859a2053:
            targetId: fb43ceb2-607d-2308-7f63-608df63a0a32
            port: SUCCESS
    results:
      SUCCESS:
        fb43ceb2-607d-2308-7f63-608df63a0a32:
          x: 700
          y: 150
