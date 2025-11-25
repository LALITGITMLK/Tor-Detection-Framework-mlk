\# Detection Decision Flow



```mermaid

graph TD

&nbsp;   A\[Tor Connection Detected] --> B{Inbound?}

&nbsp;   B -->|Yes| Z\[CRITICAL - Hidden Service/Backdoor]

&nbsp;   B -->|No| C{From Server Asset?}

&nbsp;   C -->|Yes| Z

&nbsp;   C -->|No| D{Browser Process?}

&nbsp;   D -->|No| Z

&nbsp;   D -->|Yes| E{High Volume OR Long Duration?}

&nbsp;   E -->|Yes| Y\[MEDIUM - Investigate]

&nbsp;   E -->|No| F{Off-Hours?}

&nbsp;   F -->|Yes| Y

&nbsp;   F -->|No| G{Allowlisted?}

&nbsp;   G -->|Yes| X\[Informational - Log Only]

&nbsp;   G -->|No| W\[Low - Notify User]

