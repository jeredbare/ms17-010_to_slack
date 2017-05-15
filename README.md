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
- Edit the script using a text editor and edit the following options: "[insert ip or range]" for the ip address, "[insert api token here]" for slack api token and "[channel]" for what channel you would like the alerts in.
- Make the script executable "chmod +x ms17-010_slack.sh"
- USAGE: ./ms17-010_slack.sh
- This will create a file called "ms17-010_hosts.txt" and will upload the document to slack.
- IDEA: Run this as a CRON Job to continually scan your environment for vulnerable hosts.  

# example
*config*

```nmap --script smb-vuln-ms17-010.nse -p445 127.0.0.1 >> ms17-010_hosts.txt
curl -F file=@"ms17-010_hosts.txt" -F initial_comment="MS17-010 Vulerable Machines" -F channels=#MS17-010 -F token=xoxp-special-token-010101010 https://slack.com/api/files.upload >> /dev/null```

*running the script*

```./ms017-010_slack.sh```

*output (in slack)*

```
Starting Nmap 7.40 ( https://nmap.org ) at 2017-05-15 13:33 CDT
Nmap scan report for vulnr-host-inside-the-network (127.0.0.1)
Host is up (0.00048s latency).
PORT    STATE SERVICE
445/tcp open  microsoft-ds
Host script results:
| smb-vuln-ms17-010: 
|   VULNERABLE:
|   Remote Code Execution vulnerability in Microsoft SMBv1 servers (ms17-010)
|     State: VULNERABLE
|     IDs:  CVE:CVE-2017-0143
|     Risk factor: HIGH
|       A critical remote code execution vulnerability exists in Microsoft SMBv1
|        servers (ms17-010).
|       
|     Disclosure date: 2017-03-14
|     References:
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-0143
|       https://technet.microsoft.com/en-us/library/security/ms17-010.aspx
|_      https://blogs.technet.microsoft.com/msrc/2017/05/12/customer-guidance-for-wannacrypt-attacks/
```

# additional info
Before using please insert your slack API token into the "[insert api token here]" in the ms17-010_slack.sh file.  Also modify the appropirate channel you want the alerts put in under the "channels=[channel]"

Please run NMAP in the directory where the NSE script is.

# CREDITS:
http://seclists.org/nmap-dev/2017/q2/79
https://github.com/cldrn/nmap-nse-scripts/blob/master/scripts/smb-vuln-ms17-010.nse
