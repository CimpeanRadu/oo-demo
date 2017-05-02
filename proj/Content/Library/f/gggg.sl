namespace: f
flow:
  name: gggg
  workflow:
    - g:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: g_1
    - g_1:
        do:
          f.g: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: g
  results:
    - FAILURE
extensions:
  graph:
    steps:
      g:
        x: 150
        y: 146
        navigate:
          bac7ed0e-6b69-500e-a4dd-88b7376669af:
            vertices:
              - x: 132
                y: 288.5
              - x: 264
                y: 292
              - x: 281
                y: 297
              - x: 315
                y: 298
              - x: 342
                y: 295
              - x: 365
                y: 296
              - x: 302
                y: 208
              - x: 253
                y: 172
            targetId: g_1
            port: SUCCESS
      g_1:
        x: 290
        y: 351
        navigate:
          308f24ff-d31f-073c-b3cf-6444b693828e:
            vertices:
              - x: 262
                y: 152
              - x: 356
                y: 231
              - x: 334.92824076032775
                y: 205.30815967710214
              - x: 298
                y: 201
              - x: 271
                y: 199
            targetId: g
            port: SUCCESS
