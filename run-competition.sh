#!/bin/bash

./stop-competition.sh
docker run -d --net=host --restart=always -v $(pwd)/database:/opt/owlcms/database gsmashd/owlcms-4.1.20
