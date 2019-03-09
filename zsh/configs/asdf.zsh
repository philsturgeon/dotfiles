

export ASDF_NODE_DIR=/usr/local/opt/asdf

# Try the brew location, if not, lets try the home dir
if [[ ! -d $ASDF_NODE_DIR ]];
then
  export ASDF_NODE_DIR=$HOME/.asdf
fi

source $ASDF_NODE_DIR/asdf.sh
source $ASDF_NODE_DIR/completions/asdf.bash

export NODE_TRUST_FILE=$ASDF_NODE_DIR/plugins/nodejs/.trusted
if [[ ! -f $NODE_TRUST_FILE ]];
then
  bash $ASDF_NODE_DIR/plugins/nodejs/bin/import-release-team-keyring
  touch $NODE_TRUST_FILE
fi
