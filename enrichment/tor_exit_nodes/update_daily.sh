#!/bin/bash
# Daily update script for Tor exit nodes
curl -s https://www.dan.me.uk/torlist/ > tor_exit_nodes.txt
curl -s https://check.torproject.org/torbulkexitlist >> tor_exit_nodes.txt
sort -u tor_exit_nodes.txt -o tor_exit_nodes.txt
echo "Tor nodes updated: $(date)"