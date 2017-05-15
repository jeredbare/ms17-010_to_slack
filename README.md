# ms17-010_to_slack
Scans for the MS17-010 vulnerability and drops the alert into slack.  Creates a text file of vulnerable hosts.

Before using please insert your slack API token into the "[insert api token here]" in the ms17-010_slack.sh file.

USAGE: ./ms17_010_slack.sh [ip address or range]

Please run NMAP in the directory where the NSE script is.

CREDITS:
http://seclists.org/nmap-dev/2017/q2/79
https://github.com/cldrn/nmap-nse-scripts/blob/master/scripts/smb-vuln-ms17-010.nse
