namespace: fold
flow:
  name: flow
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length: []
        navigate:
          - SUCCESS: CUSTOM
  results:
    - CUSTOM
extensions:
  graph:
    steps:
      length:
        x: 30
        y: 173
        navigate:
          44848881-ca24-01e1-4d72-a1325d57fbb3:
            targetId: f33d8228-f093-b7a2-869e-3991d457634e
            port: SUCCESS
    results:
      CUSTOM:
        f33d8228-f093-b7a2-869e-3991d457634e:
          x: 185
          y: 185
