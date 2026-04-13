# ccminer-termux

Run ccminer on termux without proot, proot-distro, or anything else similar to these.

This script build monkins1010's fork of ccminer.
https://github.com/monkins1010/ccminer

## Installation
To install, run the command below.
Fresh installation is recommended.

```bash
bash <(curl -Ls https://raw.githubusercontent.com/hajs110208/ccminer-termux/refs/heads/main/install.sh)
```

## Usage
```
ccminer -a <algorithm> -o <pool address:port> -u <wallet address> -p [worker password] -t <threads>
```

### Example

```bash
ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RNRLxdprthZdscv8Wx8Y2onZDZQjBj25yX -t 8 -p x
```
