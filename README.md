<<<<<<< HEAD
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

## Automation With Cron
=======

>>>>>>> e7154dc0ed7281746614a99c0df493eac1dbbfa9
