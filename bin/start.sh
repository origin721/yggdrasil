this_dirname=$(dirname "$0");

#docker network create -d macvlan --subnet=192.168.1.0/24 --gateway=192.168.1.1 -o parent=eth0 my_macvlan_network

docker run -it --rm --name=ygg \
  -v $this_dirname/../shared:/shared \
  --net=host --cap-add=NET_ADMIN --device=/dev/net/tun \
  s_yggdrasil /shared/start.sh
  #--net=host --cap-add=NET_ADMIN --device=/dev/net/tun \
