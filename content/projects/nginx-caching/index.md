---
title: "Nginx Apt Cache Server"
date: 2024-12-14
summary: "Linux Apt Package Caching Server that reduces internet bandwidth usage and speeds up system updates"
tags:
  - Infrastructure
  - Nginx
tech_stack:
  - Nginx
links:
featured: true
status: "Live"
role: "Solo Developer"
duration: "2 weeks"
team_size: 1
highlights:
  - "Faster Update Downloads"
  - "Less Internet Bandwidth Uses"
  - "Invokable Updates"
---

### The Challenge

After migrating the fleet to Linux Mint, we enabled automatic security updates to maintain compliance. However, this introduced a physical infrastructure scaling problem.
- **The Bottleneck:** When 100+ devices simultaneously attempted to download `apt` updates and packages from the internet, it saturated the local network bandwidth.
- **The Impact:** Updates would time out, fail, or degrade the performance of the core business application running on the devices.

### The Solution
I implemented an **Nginx-based Apt Caching Proxy** to act as a local "Update Accelerator."

**1. Architecture**
*   Configured our Nginx server configured as a reverse proxy for standard Debian/Ubuntu repositories.
*   Configured the `apt` sources on the client devices to point to this local proxy instead of the public internet.

**2. Caching Logic**
*   **First Request:** The proxy fetches the package from the internet (e.g., `linux-headers-5.15.0`).
*   **Subsequent Requests:** The proxy serves the cached file from local disk storage to the remaining 99 devices.
*   **Cache Expiry:** Configured strict caching rules to ensure critical security patches were always fresh while static binaries remained cached.
                                                            ### The Outcome
*   **Bandwidth Reduction:** External internet traffic for updates dropped by **~90%** (1 download vs. 100).
*   **Velocity:** Fleet-wide updates that used to take hours now completed in minutes, limited only by local LAN speed.
*   **Stability:** Eliminated update timeouts and network congestion issues. 

