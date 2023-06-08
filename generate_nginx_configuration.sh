rm -f default.conf
cp default.conf.template default.conf
cat ui/proxy.conf.json | jq -r "keys[]" | ./generate_location_proxy.sh >> default.conf
echo "}" >> default.conf