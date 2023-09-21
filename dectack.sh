pkg install nmap &&
echo "Type the URL or IP of website to check:"
read target

nmap -p 80,443 "$target" | grep "open" > /dev/null

if [ $? -eq 0 ]; then
  echo "Website is acessible."
else
  echo "Website is off-line or dont reply in 80 or 443 ports."
fi
