
docker run \
  -d \
  --restart unless-stopped \
  --name=dora-explorer \
  -v $(pwd):/config \
  -v $(pwd)/network-config:/network-config \
  -p 9777:8080 \
  -it ethpandaops/dora:v1.13.2 \
  -config=/config/config.yaml
