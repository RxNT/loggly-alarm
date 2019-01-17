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
