# Tor Detection Framework

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Platform](https://img.shields.io/badge/platform-Microsoft%20Defender%20XDR-blue)
![Sigma](https://img.shields.io/badge/Sigma-Rules-brightgreen)
![Last Update](https://img.shields.io/github/last-commit/LALITGITMLK/Tor-Detection-Framework-mlk)

## Overview

**Advanced risk-based Tor detection for Microsoft Defender XDR & Sentinel.**  
This framework separates legitimate privacy usage from genuine threats (C2, exfiltration, hidden services, etc.) and gives SOC teams actionable detection with context-aware severity, allowlisting, and automated enrichment.

---

## Features

- **KQL hunting query** (dynamic risk scoring 0–100)
- **Context-aware severity** (Critical → Informational)
- **Sigma rules** for cross-platform detection
- **Tiered response playbooks**
- **Daily Tor exit node auto-update script**
- **Allowlisting & tuning guidance**
- **Full documentation and philosophy in `/docs`**

---

## Who is this For?

- SOC analysts and incident responders in Defender/Sentinel environments
- Blue Teams needing actionable, automated Tor detection
- Anyone seeking robust, risk-adjusted network monitoring

**Requires:**  
- Familiarity with KQL and Microsoft Defender/Sentinel  
- Basic shell or task scheduler usage for enrichment scripts

---

## Quick Start

1. **KQL Hunting:**  
   Copy queries from [`queries/`](./queries/) into Advanced Hunting.

2. **Auto-Update Exit Nodes:**  
   Schedule [`enrichment/tor_exit_nodes/update_daily.sh`](./enrichment/tor_exit_nodes/update_daily.sh).

3. **Deploy Sigma Rules:**  
   Import rules from [`rules/sigma/`](./rules/sigma/) into your SIEM/SOC platform.

4. **Configure Allowlisting:**  
   Edit files in [`allowlist/`](./allowlist/) as needed.

5. **Operational Playbooks:**  
   Use [`playbooks/`](./playbooks/) to standardize and automate response.

---

## Repository Structure

```
queries/      — KQL queries for threat hunting
rules/sigma/  — Platform-agnostic Sigma detection rules
enrichment/   — Scripts for Tor exit node list automation
playbooks/    — Response/action scripts and runbooks
allowlist/    — Allowlisting, tuning, exceptions
docs/         — Detection philosophy, detailed documentation
```

---

## Contributing

PRs, feedback, and new rules/scripts are welcome!  
See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

---

## License

MIT Licensed — use, modify, and share freely.

---

## Acknowledgements

- Project by [Lalit Kumar](https://github.com/LALITGITMLK)
- Inspired by threat hunting and open detection communities

---

> _Empowering defenders to distinguish privacy tools from real threats._
