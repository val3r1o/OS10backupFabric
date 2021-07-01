Lab includes:

ACCESS

Switch pair with VLT. Single Homed Switch

LAG ports for Server attached (host=OS10)

ACL's/ip-prefix filtering (this is not working due to GNS3)


FABRIC
2X Datacenters room

L3 Fabric with BGP unnumbered

Super-Spine (L3/unnumbered) connection for DC1-DC2

VxLAN/EVPN overlay (Symetric IRB) - single CP for DC1/DC2

2x TENANTS, multiple VNI

VRF-route leaking with route-map selective route

Edge Leaf with BGP peering "outside" the fabric for Route type-5

BFD enable (on Leaf1/Spines-only, to save CPU)


ROUTING
L3 interface towards external router for different VRF for route type 5 termination

L3 VLAN interface for external BGP peering used to "emulate" NSX-T type of attach

L2 exit to Firewall (OS10), FW1/FW2 over VxLAN communication

Static Route for DC1/DC2 exit/last resort Static route redistribution on EVPN for A/A DC exit/fail-over




![topology](https://user-images.githubusercontent.com/20860769/124128101-be64a980-da7c-11eb-84be-aabb0069ccc0.png)

