# Instructions:
- Save stats.sh to your Raspberry Pi.
- Set permission with `chmod +x stats.sh`
- cd into the directory that stats.sh is in, then enter `./stats.sh`
- If you want to continually monitor the stats, enter `watch -n1 ./stats.sh` (where '1' is the update frequency in seconds. Alter if necessary).
# Example of output:
```
Every 1.0s: ./stats.sh                                                                                                                                             FAC: Mon Jun 29 19:30:54 2020

Mon 29 Jun 19:30:54 BST 2020
------------------------------
CPU clock speed: 0.700207 GHz
Temperature: 36°C
```
