# LogglyAlarm

LogglyAlarm is a Bash script for notifying users of Loggly errors through text or sound based alarms.

## Installation

```bash
git clone https://github.com/wromansky/LogglyAlarm.git
```

## Usage

Enter Loggly credentials in the fields in credentials.sh

* Enter the limit of error instances in the **limit** field.
* Enter the time window of the logs you want to request in the **from** and **until** fields.
* Enter a valid Loggly query string in the **query** field.

[Loggly API Reference](https://www.loggly.com/docs/search-query-language/)

Execute the script by navigating to the installation directory and running:
```bash
./alarm.sh
```

When the alarm goes off, press *q* to stop the script.

## Automation With Cron

This script is able to be automated with Cron. To do this, refer to **crontab** usage.
