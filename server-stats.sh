total_cpu_usage=0
echo "Total CPU usage: $total_cpu_usage" 

mem_usage=$(free --mega | awk '/^Mem:/ {print $3}')
total_mem=$(free --mega | awk '/^Mem:/ {print $2}')
usage_percentage=$(awk "BEGIN {printf \"%.2f\", ($mem_usage/$total_mem)*100}")
echo "Total memory usage: $mem_usage / $total_mem (${usage_percentage}%)"

total_disk_usage=0
echo -e "Total disk usage: $total_disk_usage\n"

echo 'Top 5 processes by CPU usage:'
echo '#1 - '
echo '#2 - '
echo '#3 - '
echo '#4 - '
echo '#5 - '

echo -e '\nTop 5 processes by memory usage:'
echo '#1 - '
echo '#2 - '
echo '#3 - '
echo '#4 - '
echo '#5 - '