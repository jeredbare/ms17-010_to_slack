#!/bin/bash
nmap --script smb-vuln-ms17-010.nse -p445 [ip address or range] >> ms17-010_hosts.txt
curl -F file=@"ms17-010_hosts.txt" -F initial_comment="MS17-010 Vulerable Machines" -F channels=[insert channel(s) here] -F token=[insert api token here] https://slack.com/api/files.upload >> /dev/null
