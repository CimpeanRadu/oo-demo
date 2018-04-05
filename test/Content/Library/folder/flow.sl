namespace: folder
flow:
  name: flow
  workflow:
    - How_do_I__Iterate_through_a_list:
        do_external:
          53f0bf03-0e47-42c8-8df0-334d8c1c59cd: []
        navigate:
          - failure: on_failure
          - success: length
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: ASas
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      How_do_I__Iterate_through_a_list:
        x: 100
        y: 150
      length:
        x: 400
        y: 150
        navigate:
          39c52c01-12dd-f87a-6c2e-1727165ab750:
            targetId: c812eaa1-658f-33ae-3cf3-a0eb0d912cdc
            port: SUCCESS
    results:
      SUCCESS:
        c812eaa1-658f-33ae-3cf3-a0eb0d912cdc:
          x: 700
          y: 150
