# URLHaus-Hostlist
This script just grabs the latest URLHaus list, reducing the entries to hostnames, saving the results to a plain text file.  The output is appropriate for many firewalls and security applications to consume directly as a DNS filter list.  

## Note: If you do not have an active security team, use the resulting list with caution, as popular hosts could occasionally appear in the results.

## Running
1. Edit $destFile to specify where you want the output host list to be saved.
2. Run URLHausList.ps1 from an account with write permissions to the source folder and write/modify privileges to the output file location.
