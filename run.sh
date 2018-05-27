#!/bin/bash

docker run --rm -it -v $PWD/cbox:/opt/cbox -v $PWD:/src aaalgo/cbox2 /bin/bash
