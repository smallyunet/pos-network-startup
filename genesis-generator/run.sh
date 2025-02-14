
rm -rvf network-config

docker run \
  -it \
  -e CHAIN_ID=20220915 \
  -e NUMBER_OF_VALIDATORS=128 \
  -e GENESIS_TIMESTAMP=$(date -u +%s) \
  -e GENESIS_DELAY=120 \
  -e ELECTRA_FORK_EPOCH=999999999 \
  -e FULU_FORK_EPOCH=999999999 \
  -e EIP7732_FORK_EPOCH=999999999 \
  -e EIP7805_FORK_EPOCH=999999999 \
  -v $PWD/network-config:/data \
  -v $PWD/config-example:/config \
  --rm \
  ethpandaops/ethereum-genesis-generator:3.7.0 all


