this_dirname=$(dirname "$0");

docker run -it --rm --name=ygg \
  -v $this_dirname/../shared:/shared \
  s_yggdrasil /shared/createConfig.sh
