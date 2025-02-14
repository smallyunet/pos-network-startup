cd ./genesis-generator
./run.sh

cd ../geth-lighthouse-1
./cpGenesisData.sh
./initExecution.sh

cd ../geth-lighthouse-2
./cpGenesisData.sh
./initExecution.sh

cd ../dora
./cpGenesisData.sh
