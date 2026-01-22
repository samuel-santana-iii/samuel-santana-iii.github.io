---
title: "Kiosk Lockdown"
date: 2025-06-15
summary: "Modifying a Linux OS to run a Windows app in Kiosk Mode"
tags: 
  - Full-Stack
  - Linux
  - Cubic
  - Scripting
tech_stack:
  - Bash
  - Wine
  - Slick Greeter
  - XFCE
  - Debian Packages
featured: true
status: "Live"
role: "Lead Developer"
duration: "6 months"
team_size: 2
highlights:
  - "System boots into desired program"
  - "Include technician tools"
  - "Automatic updates"
  - "Faster bootup compared to Windows"
---

## CASE STUDY 1: Legacy Modernization & Secure Kiosk Architecture

### The Challenge
With the End-of-Life (EOL) for Windows 10 approaching, the organization faced a critical decision regarding its fleet of hundreds of field devices.
*   **The Risk:** Continuing to run an unsupported OS would expose the fleet to unpatched security vulnerabilities.
*   **The Constraint:** The core proprietary application was a legacy Windows binary. Rewriting it for Linux native would take years and cost significant resources.
*   **The Hardware:** Replacing the hardware fleet to support Windows 11 was cost-prohibitive.

### The Solution
I architected a bridge solution using **WINE** (compatibility layer) and a custom Linux "Golden Image" to extend the hardware lifespan while maintaining security compliance.

**1. Compatibility Layer Engineering**
*   Validated the proprietary Windows application's stability running under WINE.
*   Scripted the WINE prefix configuration to ensure all necessary Windows DLLs and fonts were pre-staged, creating a seamless runtime environment.

**2. The "Golden Image" Architecture**
*   Utilized **Cubic** to create a custom Linux Mint ISO.
*   **Technician UX:** Built a "First-Boot" utility. Technicians simply plug in a USB drive containing the proprietary application folder. My utility automatically ingests the files, sets up the WINE environment, and configures the host.
*   **Role-Based Access:**
    *   **Kiosk User:** Auto-logs in to a locked-down XFCE desktop environment with no terminal access or visible file system. The legacy app auto-launches on boot.
    *   **Admin User:** Created by the technician during setup, allowing privileged maintenance access when required.

**3. Security Hardening**
*   Migrated from an EOL Windows environment to a maintained Linux LTS kernel.
*   Enabled automatic security updates for the host OS while keeping the legacy application contained.

### The Outcome
*   **Cost Avoidance:** Saved the organization estimated hardware replacement costs by extending the life of existing PCs.
*   **Operational Efficiency:** Technicians could provision a secure, "ready-to-go" machine in 15 minutes using the standardized ISO.

## Tech Stack Details

- Slick Greeter
- XFCE
- Bash Scripting
- Wine


