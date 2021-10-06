#!/bin/bash

#add user

id viktor
if [ $? -ne 0 ]; then
  useradd -m -d /home/viktormilev -s /bin/bash viktor
  mkdir /home/viktormilev/.ssh
  chmod 0700 /home/viktormilev/.ssh
  echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/npznyfLLy3Tsep8FfRq7i2WaxwuK29EIlvl7J/Ll1IDnorHlIH5u2XdNu5jucWrBMSGUMQB3Gn7OqwzFDOrEHcU0iXSKvTYPKPz+VCFj98uqxuwyt7CRR7PFa8yMvtFAoTPM5AIZo+XIACUC/M2kNFZR+eqZolhqOrmIb1eE3oSIlbF5mNVbVrZnCtKxI4tdSm+YLo8lHYWg93Y0ml6o7MA3APkJB/F7jI1W70KaDLeVPA9TeD2dv6FXBaG7HBrsRm87oBYcJyOWAW7M6WdmDTnlRKjK0sq0Avcv+iJPRjlZjnPS/uootg48CTzVXYX674R0dTVm+qeBXZVrivIzKxMvQR5SLVdS3LjYWUYOWBsKbyIlvaJawlpNO2iq3+Gn10PO9G770qwmzbOiTdjFaT2CV5u0gGodB3tcuRJSEefyJCsh25gZcJgH4p3PMd6sLy0kUHgvsEkd8XGsBZVYfqerYHVpyGuKA6eXahm6cZXDxrWflCfsjwY8aiMRYfk= viktor@viktor-Latitude-E7470' >> /home/viktormilev/.ssh/authorized_keys
  chmod 0400 /home/viktormilev/.ssh/authorized_keys
  echo 'viktor ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
  chown -R viktor: /home/viktormilev/.ssh
  chown -R viktor: /home/viktormilev
  
  #add to root
  if [[ ! -d /root/.ssh ]]; then
    mkdir /root/.ssh
    chmod 0700 /root/.ssh
    echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/npznyfLLy3Tsep8FfRq7i2WaxwuK29EIlvl7J/Ll1IDnorHlIH5u2XdNu5jucWrBMSGUMQB3Gn7OqwzFDOrEHcU0iXSKvTYPKPz+VCFj98uqxuwyt7CRR7PFa8yMvtFAoTPM5AIZo+XIACUC/M2kNFZR+eqZolhqOrmIb1eE3oSIlbF5mNVbVrZnCtKxI4tdSm+YLo8lHYWg93Y0ml6o7MA3APkJB/F7jI1W70KaDLeVPA9TeD2dv6FXBaG7HBrsRm87oBYcJyOWAW7M6WdmDTnlRKjK0sq0Avcv+iJPRjlZjnPS/uootg48CTzVXYX674R0dTVm+qeBXZVrivIzKxMvQR5SLVdS3LjYWUYOWBsKbyIlvaJawlpNO2iq3+Gn10PO9G770qwmzbOiTdjFaT2CV5u0gGodB3tcuRJSEefyJCsh25gZcJgH4p3PMd6sLy0kUHgvsEkd8XGsBZVYfqerYHVpyGuKA6eXahm6cZXDxrWflCfsjwY8aiMRYfk= viktor@viktor-Latitude-E7470' >> /root/.ssh/authorized_keys
    chmod 0400 /root/.ssh/authorized_keys
  fi
fi
