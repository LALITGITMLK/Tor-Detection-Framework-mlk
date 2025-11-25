\# Tor Detection Framework



Advanced, risk-based Tor detection framework for Microsoft Defender XDR / Sentinel environments.



\## Features

\- Full KQL hunting query with dynamic risk scoring (0–100)

\- Context-aware severity (Critical → Informational)

\- Sigma rules for cross-platform detection

\- Response playbooks per severity tier

\- Daily Tor exit node auto-update script

\- Built-in allowlisting \& tuning guidance



\## Why this matters

Not all Tor traffic is malicious — but all Tor traffic deserves investigation.  

This framework separates legitimate privacy use from real threats (C2, exfiltration, hidden services, compromised servers, etc.).



\## Quick Start

1\. Drop the KQL query into Advanced Hunting

2\. Schedule `enrichment/tor\_exit\_nodes/update\_daily.sh` (or use your own source)

3\. Import Sigma rules into your detection platform

4\. Customize allowlists and server keywords for your environment



\## Repository Structure

\- `queries/` → Ready-to-run KQL

\- `rules/sigma/` → Platform-agnostic Sigma rules

\- `docs/` → Full detection philosophy \& flow

\- `playbooks/` → Tiered response actions

\- `enrichment/` → Tor node list automation



MIT Licensed – use, modify, share freely.

