#!/bin/bash
export HOME=/home/ubuntu
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
cd "$HOME/app"
nvm use
node "$HOME/app/index.js"


# IyEvYmluL2Jhc2gKZXhwb3J0IEhPTUU9L2hvbWUvdWJ1bnR1CmV4cG9ydCBOVk1fRElSPSIkSE9NRS8ubnZtIgpbIC1zICIkTlZNX0RJUi9udm0uc2giIF0gJiYgXC4gIiROVk1fRElSL252bS5zaCIKWyAtcyAiJE5WTV9ESVIvYmFzaF9jb21wbGV0aW9uIiBdICYmIFwuICIkTlZNX0RJUi9iYXNoX2NvbXBsZXRpb24iCmNkICIkSE9NRS9hcHAiCm52bSB1c2UKbm9kZSAiJEhPTUUvYXBwL2luZGV4LmpzIg==

# cat /var/log/cloud-init-output.log