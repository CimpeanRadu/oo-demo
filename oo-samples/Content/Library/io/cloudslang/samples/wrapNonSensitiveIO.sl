namespace: io.cloudslang.samples
flow:
  name: wrapNonSensitiveIO
  inputs:
    - SIn:
        sensitive: true
  workflow:
    - nonSensitiveIO:
        do_external:
          ac54452b-fcab-4ed6-ba53-4952098bf357:
            - nonSensitiveInput: '${SIn}'
        publish:
          - nonSensitiveOut
        navigate:
          - success: append
    - append:
        do:
          io.cloudslang.base.strings.append:
            - origin_string: '${nonSensitiveOut}'
            - text: appended
        publish:
          - new_string
        navigate:
          - SUCCESS: SUCCESS
  outputs:
    - NSOut: '${new_string}'
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      nonSensitiveIO:
        x: 100
        y: 150
      append:
        x: 240
        y: 351
        navigate:
          450a7861-cecd-3c09-ea04-8726917c64ac:
            targetId: 8ec2be5b-6a87-96eb-fcd1-c6bfe851435d
            port: SUCCESS
    results:
      SUCCESS:
        8ec2be5b-6a87-96eb-fcd1-c6bfe851435d:
          x: 400
          y: 150
