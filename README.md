# lx-whois
Record your whois queries

## Check availaibility
And optionally record the current status.
```
$ lx-whois perfect.domain
No whois server is known for this kind of object.
Record as Available [y] / Not available [n] / Do not record [Enter]? 
2019-01-17 12:17:12 perfect.domain TAKEN >> /home/you/.lx-whois.log
```
## View history
of all the availaibilty checks you have made before with the status at the time
```
$ lx-whois
```
Opens the logfile to `view`
```
2019-01-17 12:17:12 perfect.domain TAKEN
```
