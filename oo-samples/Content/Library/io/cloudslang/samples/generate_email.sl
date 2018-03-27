########################################################################################################################
#!!
#! @description: Generated Python operation description.
#!
#! @input input_1: Generated description
#!
#! @output output_1: Generated description
#!
#! @result SUCCESS: Operation completed successfully.
#! @result FAILURE: Failure occurred during execution.
#!!#
########################################################################################################################

namespace: oo_samples.content.library.io.cloudslang.samples

operation:
  name: generate_email

  inputs:
    - firstname
    - lastname
    - middlename
    - domain
    - attempt

  python_action:
    script: |
      attempt = int(attempt)
      if attempt == 1:
        address = firstname[0] + lastname + '@' + domain
      elif attempt == 2:
        address = firstname[0:1] + middlename +'.' + lastname + '@' + domain
      elif attempt == 3 and middle_name != '':
        address = first_name + '.' + middle_name[0:1] + '.' + last_name + '@' + domain
      else:
        address = ''
      print address

  outputs:
    - address: ${address}

  results:
    - FAILURE: ${address == ''}
    - SUCCESS