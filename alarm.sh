#LogglyAlarm, a bash script to alert users of Loggly error logs.
#Copyright (C) 2019 RxNT

#This program is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.

source alertConfig.sh
source credentials.sh

#echo ""
#echo "$query"
#echo "$from"
#echo "$until"
#echo "$limit"
#echo ""

vez=$(curl -s -u $usr:$passwd -XGET "https://rxnt.loggly.com/apiv2/events/iterate?q=$query&from=$from&until=$until&size=$limit" |\
	jq ' .events | length')

if [ $vez -eq $limit ]; then
	while :
	do
		if [[ "$OSTYPE" == "darwin"* ]]; then
			osascript -e beep
			echo "MACALERT"
		else
			echo "ALERT"
		fi

		# Wait for user to press 'q' to stop alarm
		read -t 0.25 -N 1 input
		if [ "$input" = "q" ] || [ "$input" = "Q" ]; then
			echo ""
			echo "Alert stopped."
			break
		fi
	done
fi
