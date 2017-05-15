# ms17-010_to_slack
Scans for the MS17-010 vulnerability and drops the alert into slack.  Creates a text file of vulnerable hosts.

# prereqs
1. Mac OSX or Linux
2. NMAP
3. Bundled MS17-010 Vulnerability Script.
4. API Token from Slack

# how to install
git clone https://github.com/jeredbare/ms17-010_to_slack.git [directory]

# how to use this script
- Edit the script using a text editor and edit the following options: "[insert api token here]" for slack api token and "[channel]" for what channel you would like the alerts in.
- USAGE: ./ms17-010_slack.sh [ip address or range]
- This will create a file called "ms17-010_hosts.txt" and will upload the document to slack.
- IDEA: Run this as a CRON Job to continually scan your environment for vulnerable hosts.  

# additional info
Before using please insert your slack API token into the "[insert api token here]" in the ms17-010_slack.sh file.  Also modify the appropirate channel you want the alerts put in under the "channels=[channel]"

Please run NMAP in the directory where the NSE script is.

# CREDITS:
http://seclists.org/nmap-dev/2017/q2/79
https://github.com/cldrn/nmap-nse-scripts/blob/master/scripts/smb-vuln-ms17-010.nse
