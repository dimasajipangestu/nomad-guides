#!/bin/bash

echo "[---Begin install-base.sh---]"

echo "Wait for system to be ready"
sleep 10

echo "Run base script"
curl https://raw.githubusercontent.com/hashicorp/guides-configuration/master/shared/scripts/base.sh | bash

echo "Install Wetty"
export GROUP=${wetty_user}
export USER=${wetty_user}
export PASSWORD=${wetty_pass}
export COMMENT="Wetty Web Terminal SSH user"
curl https://raw.githubusercontent.com/hashicorp/guides-configuration/master/shared/scripts/setup-ssh-user.sh | bash
curl https://raw.githubusercontent.com/hashicorp/guides-configuration/master/shared/scripts/web-terminal.sh | bash

echo "[---install-base.sh Complete---]"
