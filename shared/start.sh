#!/bin/bash

mkdir /run/yggdrasil;
cat /shared/ygg.conf | /app/yggdrasil-go/yggdrasil -normaliseconf -useconf > /run/yggdrasil/yggdrasil.conf;
/app/yggdrasil-go/yggdrasil -useconffile /run/yggdrasil/yggdrasil.conf
