# Ethereum Proof of Stake Network Setup with Geth and Lighthouse

## Introduction

This project provides a streamlined process for setting up an Ethereum Proof of Stake (PoS) network using Geth and Lighthouse. It's designed for users who are interested in exploring and testing the Ethereum PoS mechanism.

## Prerequisites

- Docker and Docker Compose
- Basic understanding of Ethereum, Geth, and Lighthouse

## Installation

Clone this repository to get started:

```
git clone https://github.com/smallyunet/pos-network-startup.git
```

After cloning, navigate to the project's root directory.

## Setup

### Initial Setup

To set up the network for the first time, run the `init.sh` script:

```
./init.sh
```

This script performs the following tasks:

1. Prepares the genesis data in `./genesis-data`.
2. Clears any existing data and sets up the initial environment.
3. Initializes the Geth execution client and the Lighthouse consensus client.

### Starting the Network

To start the network after initialization, use the `start.sh` script:

```
./start.sh
```


This script launches the following components:

- Geth execution client
- Lighthouse consensus client
- Dora service (located in the `dora` directory)
- A local browser service on port 9777 to monitor node status

You can access the node status at [http://localhost:9777](http://localhost:9777).

### Stopping the Network

To stop the network, use the `stop.sh` script:

```
./stop.sh
```

This will shut down all running network components.

### Clearing Network Data

If you want to reset the network and remove all data, use the `clear.sh` script:

```
./clear.sh
```

This will delete all existing network data, allowing you to start fresh with `init.sh`.

## Usage

After running `init.sh` (for initial setup) or `start.sh` (to restart the network), your Ethereum PoS network will be fully operational. The network includes:

- **Geth Execution Client** (Ports: `8545` for HTTP, `8546` for WebSocket)
- **Lighthouse Beacon Node** (Port: `5052`), **Validator Client** (Port: `5062`)
- **Dora Monitoring Service** (Port: `9777` for web-based monitoring)
- Additional configurations and ports as specified in the Docker Compose files. Refer to the `geth-lighthouse-1` directory for details.

## Contributing

Contributions are welcome. Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature.
3. Commit and push your changes.
4. Submit a pull request with a detailed description.
