# Get the current usage of CPU and memory
  processCount=$(ps -u dmitriy_zh --no-heading | wc -l)
  load=$(uptime | awk '{print $11}')
  freeMem=$(free | awk '/Mem/ {print $4}')
  diskSpace=$(df -h | awk '/vg-ubuntu/ {print $4}')
# Print the usage
  echo '-----------------------------'
  echo "Количество запущенных процессов: $processCount"
  echo "Load average за 15 мин: $load"
  echo "Свободной памяти (Мб): $freeMem"
  echo "Свободно места: $diskSpace"
  echo '-----------------------------'
