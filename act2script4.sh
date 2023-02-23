#! /bin/bash

function generate_report {

	date_time=$(date + "+%Y-$m-%d %H:%M:%S")

	cpu_usage=$(top -bn1 | grep load | awk '{printf "%.2f%%\n", $(NF-2)}')

	mem_usage=$(free | awk '/Mem/{printf "%.2f%%\n", $3/$2*100}')

    	disk_usage=$(df -h / | awk '/\//{printf "%s\n", $5}')

    	echo "Report generated on $date_time" 
	echo "CPU usage: $cpu_usage"
    	echo "Memory usage: $mem_usage"
      	echo "Disk usage: $disk_usage"
	    echo "End of report"
}

# Call the generate_report function
generate_report
	
