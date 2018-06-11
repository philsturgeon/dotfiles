source /usr/local/opt/asdf/asdf.sh
source /usr/local/etc/bash_completion.d


export NODE_TRUST_FILE=/usr/local/opt/asdf/plugins/nodejs/.trusted
if [[ ! -f $NODE_TRUST_FILE ]];
then
  bash /usr/local/opt/asdf/plugins/nodejs/bin/import-release-team-keyring
  touch $NODE_TRUST_FILE
fi
