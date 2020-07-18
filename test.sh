ip=$(sh readline.sh)
clear
for i in $ip;
do
mkdir -p $i
z="Ports/"$1".txt"
port=$(cat $z)
for j in $port;
do
nmap -Pn -sC -T4 -sV -p$j $i 
sleep 2 
scrot -u $i/$j.png 
clear
done
done

echo "done"
