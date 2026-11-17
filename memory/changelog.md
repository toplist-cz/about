# toplist/about changelog (dated, append-only)

## 2026-11-16 - Explicit /28 subnet for the compose network (branch fix/compose-explicit-subnet)
- Boss-approved network narrowing: `docker-compose.yml` now declares the default network explicitly
  with ipam subnet 172.26.1.0/28 (name unchanged: about_default). The live network was a legacy
  auto-allocated /16 (172.19.0.0/16); it shrinks only on recreate. /28 is the libnetwork minimum
  (14 usable IPs); the docker daemon's default-address-pools now default new networks to /28.
- Single static nginx container; no hardcoded 172.x refs (grep-proven). Site reached on published
  host port 8090; live CI deploys via rsync (unaffected by container subnet).
- Proof: stack recreated from this branch (image unchanged), about_default = 172.26.1.0/28 with
  1 container, / 200 on :8090.
