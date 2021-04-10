docker run \
    --name valheim-server-3 \
    --cap-add=sys_nice \
    --stop-timeout 120 \
    -p 2456-2457:2456-2457/udp \
    -v $HOME/valheim-server/config:/config \
    -v $HOME/valheim-server/data:/opt/valheim \
    -e SERVER_NAME="New Pepino server" \
    -e WORLD_NAME="New Pepino world" \
    -e SERVER_PASS="testing" \
    lloesche/valheim-server