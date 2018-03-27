namespace: io.cloudslang.samples
flow:
  name: flow_using_generate_email
  inputs:
    - domain: mydomain.com
    - firstname: First
    - lastname: Last
    - middlename: middlename
    - attempt: '1'
  workflow:
    - generate_email:
        do:
          oo_samples.content.library.io.cloudslang.samples.generate_email:
            - firstname: '${firstname}'
            - lastname: '${lastname}'
            - middlename: '${middlename}'
            - domain: '${domain}'
            - attempt: '${attempt}'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      generate_email:
        x: 100
        y: 150
        navigate:
          c0adf986-6aeb-e2ea-31ec-f57aadadb877:
            targetId: 7b6b7d2f-1d60-57b6-8903-fe1a0e4797b2
            port: SUCCESS
    results:
      SUCCESS:
        7b6b7d2f-1d60-57b6-8903-fe1a0e4797b2:
          x: 400
          y: 150
