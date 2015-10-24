Mping - README

Description
-----------
A network testing tool to verify multicast connectivity.

This tool is used for checking if multicast packets can
cross multiple routers.

Application has to be executed on all of the network leaves
used in connectivity testing - tests require a single sender
and multiple receivers.

Compiling
---------
make

Usage
-----

   mping -l -I <interface address> [-p <udp port>] [-g <multicast group[/source]>] [-q]
   mping -s -I <interface address> [-p <udp port>] [-g <multicast group>] [-i <interval in ms>] [-c <count>] [-T TTL ] [-q] [-S payload size]
   Defaults: interval - 1 second, multicast group - 226.1.1.1 , udp port - 4322

Any-source multicast mode (ASM) used by default. If you want to use Source-specific multicast (SSM) mode, specify the source IP address of the multicast sender with the group option.

Usage Example
-------------
Simple network topology:

Host A ---- Cisco ---- Cisco ---- Host B
                         |
                       Cisco
                         |
                         -------- Host C

Host A IP - 10.0.101.2/24
Host B IP - 10.0.102.2/24
Host C IP - 10.0.103.2/24

Verifying that multicast packets sent from Host A can be
heard on Host B and Host C.

Host B:
user@host_b:/tmp$ mping -l -I 10.0.102.2

Host C:
user@host_c:/tmp$ mping -l -I 10.0.103.2

Host A:
user@host_a:/tmp$ mping -s -I 10.0.101.2 -c 10
MPING 226.1.1.1 1024(1052) bytes of data.
1024 bytes from 10.0.102.2: seq=0 ttl=62 time=0.889 ms
1024 bytes from 10.0.103.2: seq=0 ttl=61 time=1.884 ms
1024 bytes from 10.0.102.2: seq=1 ttl=62 time=0.660 ms
1024 bytes from 10.0.103.2: seq=1 ttl=61 time=1.516 ms
1024 bytes from 10.0.102.2: seq=2 ttl=62 time=0.447 ms
1024 bytes from 10.0.103.2: seq=2 ttl=61 time=1.543 ms
1024 bytes from 10.0.102.2: seq=3 ttl=62 time=0.921 ms
1024 bytes from 10.0.103.2: seq=3 ttl=61 time=1.591 ms
1024 bytes from 10.0.102.2: seq=4 ttl=62 time=0.677 ms
1024 bytes from 10.0.103.2: seq=4 ttl=61 time=1.766 ms
1024 bytes from 10.0.102.2: seq=5 ttl=62 time=0.778 ms
1024 bytes from 10.0.103.2: seq=5 ttl=61 time=1.494 ms
1024 bytes from 10.0.102.2: seq=6 ttl=62 time=0.818 ms
1024 bytes from 10.0.103.2: seq=6 ttl=61 time=1.640 ms
1024 bytes from 10.0.102.2: seq=7 ttl=62 time=0.896 ms
1024 bytes from 10.0.103.2: seq=7 ttl=61 time=1.433 ms
1024 bytes from 10.0.102.2: seq=8 ttl=62 time=0.536 ms
1024 bytes from 10.0.103.2: seq=8 ttl=61 time=1.666 ms
1024 bytes from 10.0.102.2: seq=9 ttl=62 time=0.647 ms
1024 bytes from 10.0.103.2: seq=9 ttl=61 time=1.348 ms

10.0.102.2: rtt min/avg/max: 0.447/0.726/0.921 ms, loss: 0% (0 packets)
10.0.103.2: rtt min/avg/max: 1.348/1.588/1.884 ms, loss: 0% (0 packets)
