#!/bin/sh

echo $$DOCKERHUB_PASS | docker login -u $$DOCKERHUB_USER --password-stdin & wait
cd ./aapanel-ubuntu-22-04-sysbox
apk add make & wait
make --no-print-directory mass_no_parallel_update_cycle & wait

# then update your production container by stopping and restarting it
# I'm using swarm so, something like:
# docker service update --image ${REPO} ${STACK}_aap & wait
# docker exec -i ${STACK} bash -c "bt 16" & wait & wait