How to use.

Backup.sh script to lunch the back up and sync on git</br>
This is to be used under source ~/opt/dellos10env/bin/activate virtual ENV </br>
Please review https://github.com/val3r1o/startupdellos10ansible to create control node right way </br>
Ansible Palybook (copyconfig.yml) to keep back up of full fabric (inventory) configuration on /configs</br>
Topology represent the scenario on GNS3. Dell SmartFabric OS10.5.2.3 </br>

Tha main point of this space is not the Ansible script, rather the Network configuration and possible replication of it.

Lab includes:

ACCESS</br>
Switch pair with MCLAG </br> 
Single Homed Switch</br>
LAG ports for Server attached (host=OS10)</br>
ACL's/ip-prefix filtering (this is not working due to GNS3)</br>

FABRIC</br>
2X Datacenters room </br>
L3 Fabric with BGP unnumbered </br>
Super-Spine (L3/unnumbered) connection for DC1-DC2 </br>
VxLAN/EVPN overlay (Symetric IRB) - single CP for DC1/DC2 </br>
2x TENANTS, multiple VNI </br>
VRF-route leaking with route-map selective route </br>
Edge Leaf with BGP peering "outside" the fabric for Route type-5 </br>
BFD enable (on Leaf1/Spines-only, to save CPU) </br>

ROUTING</br>
L3 interface towards external router for different VRF for route type 5 termination </br>
L3 VLAN interface for external BGP peering used to "emulate" NSX-T type of attach </br>
L2 exit to Firewall (OS10), FW1/FW2 over VxLAN communication </br>
Static Route for DC1/DC2 exit/last resort Static route redistribution on EVPN for A/A DC exit/fail-over</br>


![topology](https://user-images.githubusercontent.com/20860769/124929260-a652d400-e000-11eb-8d7e-d28e65655ef3.png)
