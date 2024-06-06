this_dirname=$(dirname "$0");
echo ${this_dirname};

docker build \
  -t s_yggdrasil \
  -f ${this_dirname}/../dockerfiles/CreateImage ${this_dirname}/../empty
