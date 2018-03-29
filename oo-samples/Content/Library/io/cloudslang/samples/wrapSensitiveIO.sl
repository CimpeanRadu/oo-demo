namespace: io.cloudslang.samples
flow:
  name: wrapSensitiveIO
  inputs:
    - NSInput: ''
  workflow:
    - sensitiveIO:
        do_external:
          251296b6-a3e6-482a-9da5-c7c5beee0316:
            - sensitiveInput:
                value: '${NSInput}'
                sensitive: true
        publish:
          - sensitiveOut
        navigate:
          - success: append
    - append:
        do:
          io.cloudslang.base.strings.append:
            - origin_string: '${sensitiveOut}'
            - text: stuff
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
      sensitiveIO:
        x: 100
        y: 150
      append:
        x: 262
        y: 253
        navigate:
          b31f03e1-2233-a741-1aba-6fb94ab3510a:
            targetId: a4460b48-983a-2c06-26de-add98d793ec0
            port: SUCCESS
    results:
      SUCCESS:
        a4460b48-983a-2c06-26de-add98d793ec0:
          x: 400
          y: 150
