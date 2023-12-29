

export ASDF_NODE_DIR=/usr/local/opt/asdf

# Try the brew location, if not, lets try the home dir
if [[ ! -d $ASDF_NODE_DIR ]];
then
  export ASDF_NODE_DIR=$HOME/.asdf
fi

export NODE_TRUST_FILE=$HOME/.asdf/plugins/nodejs/.trusted
if [[ ! -f $NODE_TRUST_FILE ]];
then
  bash $HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring
  touch $NODE_TRUST_FILE
fi
