echo "$(tput setaf 2)

Welcome to $(hostname), $(whoami)!

   .~~.   .~~.       `date +"%A, %e %B %Y, %r"`
  '. \ ' ' / .'      Uptime.............: $(uptime -p)$(tput setaf 1)
   .~ .~~~..~.
  : .~.'~'.~. :      Memory.............: `cat /proc/meminfo | grep MemFree | awk {'print $2'}`kb (Free) / `cat /proc/meminfo | grep MemTotal | awk {'print $2'}`kb (Total)
 ~ (   ) (   ) ~     Load Averages......: $(uptime | grep -oP '(?<=average: ).*')
( : '~'.~.'~' : )    Running Processes..: `ps ax | wc -l | tr -d " "`
 ~ .~ (   ) ~. ~     IP Addresses.......: `ip -4 addr |grep inet | awk '!/secondary/ && !/127/' |awk {'print $2'} |cut -d "/" -f 1` Ext: `curl -s http://icanhazip.com`
  (  : '~' :  )      Disk Space.........: Free: `df -Ph | grep -E 'tank/apps/subvol-110-disk-0' | awk '{ print $4 }'` | Used: `df -Ph | grep -E '^tank/apps/subvol-110-disk-0' | awk '{ print $3 }'` $(tput setaf 2)`df -Ph | grep -E '^tank/apps/subvol-110-disk-0' | awk '{ print $5 }'`$(tput setaf 1)
   '~ .~~~. ~'       Current `curl -s https://v2.wttr.in/98115\?0 |grep "Weather:"`
       '~'
$(tput sgr0)"
