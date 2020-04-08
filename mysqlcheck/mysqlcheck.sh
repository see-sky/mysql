##
if [ x$1 = x ]
 then
  echo "Usage ./mysqlcheck.sh <PORT> <PASSWORD>";exit 1
fi
if [ x$2 = x ]
 then
  echo "Usage ./mysqlcheck.sh <PORT> <PASSWORD>";exit 1
fi

MYSQLPORT=$1
MYSQLPASSWD=$2

##Calc Env
MYSQLBASEDIR=`ps -ef|grep mysql|grep port|grep $MYSQLPORT|awk -F '--basedir=' '{print $2}'|awk '{print $1}'`
MYSQLDATADIR=`ps -ef|grep mysql|grep port|grep $MYSQLPORT|awk -F '--datadir=' '{print $2}'|awk '{print $1}'`
MYSQLSOCKET=`ps -ef|grep mysql|grep port|grep $MYSQLPORT|awk -F '--socket=' '{print $2}'|awk '{print $1}'`
MYSQLCMD=$MYSQLBASEDIR/bin/mysql
MYSQLSLOWCMD=$MYSQLBASEDIR/bin/mysqldumpslow
MYSQLHOST=localhost
MYSQLUSER=root
MYSQLHOSTNAME=`hostname -s`
MYSQLPID=`ps -ef|grep mysql|grep $MYSQLBASEDIR|grep -v grep|grep -v safe|awk '{print $2}'`

$MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -e "select @@version\G" 1>>mysqlcheck.tmp.version 2>/dev/null
MYSQLVERSION=`cat mysqlcheck.tmp.version|grep -v '*'|awk '{print $2}'|awk -F '-' '{print $1}'|sed 's/\.//g'`
MYSQLVERSION2=`echo $MYSQLVERSION|cut -c 1,2`


##Clean
rm -f mysqlcheck.tmp.*
>mysqlcheck.html

##systeminf
>mysqlcheck.tmp.systeminf
echo '<tr><td class=y>Hostname</td><td>'`hostname`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>OS Version</td><td>'`cat /etc/redhat-release`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>Kernel Version</td><td>'`uname -a|awk '{print $3}'`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>CPU Thread Number</td><td>'`cat /proc/cpuinfo|grep processor|wc -l`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>CPU Model</td><td>'`cat /proc/cpuinfo|grep "model name"|awk -F ':' '{print $NF}'|uniq`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>MemTotal</td><td>'`cat /proc/meminfo |grep MemTotal|awk -F ':' '{print $NF}'|sed 's/[ ][ ]*//'`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>PageTables</td><td>'`cat /proc/meminfo |grep PageTables|awk -F ':' '{print $NF}'|sed 's/[ ][ ]*//'`'</td></tr>' >> mysqlcheck.tmp.systeminf
echo '<tr><td class=y>SELinux</td><td>'`cat /etc/selinux/config|grep "SELINUX="|grep -v "#"`'</td></tr>' >> mysqlcheck.tmp.systeminf

##systemfree
>mysqlcheck.tmp.systemfree
echo '<tr><td>'`free -m|head -2|tail -1|sed 's/[ ][ ]*/\<\/td\>\<td\>/g'`'</td></tr>' >>mysqlcheck.tmp.systemfree
echo '<tr><td>'`free -m|head -3|tail -1|sed 's/[ ][ ]*/\<\/td\>\<td\>/g'`'</td><td></td><td></td><td></td></tr>' >>mysqlcheck.tmp.systemfree

##systemdfu
>mysqlcheck.tmp.systemdfu
NUM=`df -hP|grep -v tmpfs|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td>'`df -hP|grep -v tmpfs|sed 's/[ ][ ]*/\<\/td\>\<td\>/g'|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.systemdfu
done;

##systemdfi
>mysqlcheck.tmp.systemdfi
NUM=`df -iP|grep -v tmpfs|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td>'`df -iP|grep -v tmpfs|sed 's/[ ][ ]*/\<\/td\>\<td\>/g'|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.systemdfi
done;

##systemsysctl
>mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>fs.file-max</td><td>'`sysctl fs.file-max`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>fs.aio-max-nr</td><td>'`sysctl fs.aio-max-nr`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>fs.aio-nr</td><td>'`sysctl fs.aio-nr`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>kernel.sem</td><td>'`sysctl kernel.sem`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>kernel.shmmni</td><td>'`sysctl kernel.shmmni`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>kernel.shmall</td><td>'`sysctl kernel.shmall`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>kernel.shmmax</td><td>'`sysctl kernel.shmmax`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>net.ipv4.ip_local_port_range</td><td>'`sysctl net.ipv4.ip_local_port_range`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>net.core.rmem_default</td><td>'`sysctl net.core.rmem_default`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>net.core.rmem_max</td><td>'`sysctl net.core.rmem_max`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>net.core.wmem_default</td><td>'`sysctl net.core.wmem_default`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>net.core.wmem_max</td><td>'`sysctl net.core.wmem_max`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>vm.swappiness</td><td>'`sysctl vm.swappiness`'</td></tr>' >> mysqlcheck.tmp.systemsysctl
echo '<tr><td class=y>vm.min_free_kbytes</td><td>'`sysctl vm.min_free_kbytes`'</td></tr>' >> mysqlcheck.tmp.systemsysctl

##systemlimits
cat /proc/$MYSQLPID/limits >> mysqlcheck.tmp.limits
NUM=`cat mysqlcheck.tmp.limits|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td class=y>'`cat mysqlcheck.tmp.limits|head -$i|tail -1|awk -v FIELDWIDTHS="26 21 21 21" '{print ($1)"</td><td>"($2)"</td><td>"($3)"</td><td>"($4)"</td></tr>"}'` >>mysqlcheck.tmp.limits2
done;

##SYSTEMIP4
iptables -L >> mysqlcheck.tmp.systemip4
NUM=`cat mysqlcheck.tmp.systemip4|wc -l`
for ((i=1;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.systemip4|head -$i|tail -1` >>mysqlcheck.tmp.systemip42
done;

##SYSTEMIP6
iptables -L >> mysqlcheck.tmp.systemip6
NUM=`cat mysqlcheck.tmp.systemip6|wc -l`
for ((i=1;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.systemip6|head -$i|tail -1` >>mysqlcheck.tmp.systemip62
done;

##SYSTEMVMSTAT
vmstat -w 2 10 >> mysqlcheck.tmp.systemvmstat
NUM=`cat mysqlcheck.tmp.systemvmstat|wc -l`
for ((i=3;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.systemvmstat|sed 's/[ ][ ]*/\<\/td\>\<td\>/g'|head -$i|tail -1` >>mysqlcheck.tmp.systemvmstat2
done;

##SYSTEMSAR
sar -d 2 10 >> mysqlcheck.tmp.systemsar
cat mysqlcheck.tmp.systemsar|grep Average >> mysqlcheck.tmp.systemsar2
NUM=`cat mysqlcheck.tmp.systemsar2|wc -l`
for ((i=1;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.systemsar2|grep -v tps|sed 's/[ ][ ]*/\<\/td\>\<td\>/g'|head -$i|tail -1` >> mysqlcheck.tmp.systemsar3
done;

##SYSTEMHWCLOCK
echo '<tr><td>'`date`'</td><td>'`hwclock`'</td></tr>' >> mysqlcheck.tmp.systemhwclock

##ErrorLog
$MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -e " show variables like 'log_error'\G" 1>>mysqlcheck.tmp.errorname 2>/dev/null
MYSQLERRNAME=`cat mysqlcheck.tmp.errorname|grep -v '*'|grep Value|awk '{print $2}'`
if [[ $MYSQLERRNAME =~ ^[.] ]];then
    MYSQLERRNAME2=`echo $MYSQLERRNAME|sed 's/.//'`
    MYSQLERRPATH=$MYSQLDATADIR$MYSQLERRNAME2
else
    MYSQLERRPATH=$MYSQLERRNAME
fi
tail -200 $MYSQLERRPATH >> mysqlcheck.tmp.errorfile
NUM=`cat mysqlcheck.tmp.errorfile|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td width="600" style="word-break:break-all">'`cat mysqlcheck.tmp.errorfile|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.errorfile2
done;

##Slowlog
$MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -e " show variables like 'slow_query_log_file'\G" 1>>mysqlcheck.tmp.slowfile 2>/dev/null
MYSQLSLOWPATH=`cat mysqlcheck.tmp.slowfile|grep -v '*'|grep Value|awk '{print $2}'`
tail -20000 $MYSQLSLOWPATH >> mysqlcheck.tmp.slowlog
$MYSQLSLOWCMD -s t -t 10 mysqlcheck.tmp.slowlog >> mysqlcheck.tmp.slowlog2 2>>/dev/null
NUM=`cat mysqlcheck.tmp.slowlog2|wc -l`
for ((i=1;i<=$NUM;i++))
 do
  echo '<tr><td width="600" style="word-break:break-all">'`cat mysqlcheck.tmp.slowlog2|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.slowlog3
done;

##systemlog
tail -500 /var/log/messages|grep -v systemd|grep -v snmp >> mysqlcheck.tmp.systemlog
NUM=`cat mysqlcheck.tmp.systemlog|wc -l`
for ((i=1;i<=$NUM;i++))
 do
  echo '<tr><td width="600" style="word-break:break-all">'`cat mysqlcheck.tmp.systemlog|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.systemlog2
done;

##innodbstatus
>mysqlcheck.tmp.innodbstatus
$MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -e "show engine innodb status\G" 1>>mysqlcheck.tmp.innodbstatus 2>/dev/null
NUM=`cat mysqlcheck.tmp.innodbstatus|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.innodbstatus|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.innodbstatus2
done;

##rplmaster
>mysqlcheck.tmp.rplmaster
$MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -e "show master status\G" 1>>mysqlcheck.tmp.rplmaster 2>/dev/null
NUM=`cat mysqlcheck.tmp.rplmaster|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.rplmaster|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.rplmaster2
done;

##rplslave
>mysqlcheck.tmp.rplslave
$MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -e "show slave status\G" 1>>mysqlcheck.tmp.rplslave 2>/dev/null
NUM=`cat mysqlcheck.tmp.rplslave|wc -l`
for ((i=2;i<=$NUM;i++))
 do
  echo '<tr><td>'`cat mysqlcheck.tmp.rplslave|head -$i|tail -1`'</td></tr>' >>mysqlcheck.tmp.rplslave2
done;

##Main Proc
if [ x$MYSQLVERSION2 == x55 ]
 then $MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -N 1>>mysqlcheck.tmp.html 2>/dev/null <<EOF
source mysqlcheck56.sql
EOF
elif [ x$MYSQLVERSION2 == x56 ]
 then $MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -N 1>>mysqlcheck.tmp.html 2>/dev/null <<EOF
source mysqlcheck56.sql
EOF
elif [ x$MYSQLVERSION2 == x57 ]
 then $MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -N 1>>mysqlcheck.tmp.html 2>/dev/null <<EOF
source mysqlcheck57.sql
EOF
elif [ x$MYSQLVERSION2 == x80 ]
 then $MYSQLCMD -h $MYSQLHOST -u$MYSQLUSER -p$MYSQLPASSWD -S $MYSQLSOCKET -N 1>>mysqlcheck.tmp.html 2>/dev/null <<EOF
source mysqlcheck57.sql
EOF
else exit 1;
fi
cat mysqlcheck.tmp.html|grep -v '*' > mysqlcheck.html

##Replace
sed -i '/SYSTEMINF/r mysqlcheck.tmp.systeminf' mysqlcheck.html
sed -i '/SYSTEMINF/d' mysqlcheck.html
sed -i '/SYSTEMFREE/r mysqlcheck.tmp.systemfree' mysqlcheck.html
sed -i '/SYSTEMFREE/d' mysqlcheck.html
sed -i '/SYSTEMDFU/r mysqlcheck.tmp.systemdfu' mysqlcheck.html
sed -i '/SYSTEMDFU/d' mysqlcheck.html
sed -i '/SYSTEMDFI/r mysqlcheck.tmp.systemdfi' mysqlcheck.html
sed -i '/SYSTEMDFI/d' mysqlcheck.html
sed -i '/SYSTEMSYSCTL/r mysqlcheck.tmp.systemsysctl' mysqlcheck.html
sed -i '/SYSTEMSYSCTL/d' mysqlcheck.html
sed -i '/SYSTEMLIMITS/r mysqlcheck.tmp.limits2' mysqlcheck.html
sed -i '/SYSTEMLIMITS/d' mysqlcheck.html
sed -i '/SYSTEMIP4/r mysqlcheck.tmp.systemip42' mysqlcheck.html
sed -i '/SYSTEMIP4/d' mysqlcheck.html
sed -i '/SYSTEMIP6/r mysqlcheck.tmp.systemip62' mysqlcheck.html
sed -i '/SYSTEMIP6/d' mysqlcheck.html
sed -i '/SYSTEMVMSTAT/r mysqlcheck.tmp.systemvmstat2' mysqlcheck.html
sed -i '/SYSTEMVMSTAT/d' mysqlcheck.html
sed -i '/SYSTEMSAR/r mysqlcheck.tmp.systemsar3' mysqlcheck.html
sed -i '/SYSTEMSAR/d' mysqlcheck.html
sed -i '/SYSTEMHWCLOCK/r mysqlcheck.tmp.systemhwclock' mysqlcheck.html
sed -i '/SYSTEMHWCLOCK/d' mysqlcheck.html
sed -i '/INNODBSTATUS/r mysqlcheck.tmp.innodbstatus2' mysqlcheck.html
sed -i '/INNODBSTATUS/d' mysqlcheck.html
sed -i '/RPLMASTER/r mysqlcheck.tmp.rplmaster2' mysqlcheck.html
sed -i '/RPLMASTER/d' mysqlcheck.html
sed -i '/RPLSLAVE/r mysqlcheck.tmp.rplslave2' mysqlcheck.html
sed -i '/RPLSLAVE/d' mysqlcheck.html
sed -i '/ERRORLOG/r mysqlcheck.tmp.errorfile2' mysqlcheck.html
sed -i '/ERRORLOG/d' mysqlcheck.html
sed -i '/SLOWLOG/r mysqlcheck.tmp.slowlog3' mysqlcheck.html
sed -i '/SLOWLOG/d' mysqlcheck.html
sed -i '/SYSTEMLOG/r mysqlcheck.tmp.systemlog2' mysqlcheck.html
sed -i '/SYSTEMLOG/d' mysqlcheck.html

##Rename
mv mysqlcheck.html ces_dbcheck_mysql_${MYSQLHOSTNAME}_${MYSQLVERSION}_${MYSQLPORT}_`date +%Y%m%d`_`date +%H%M%S`.html

##Clean
rm -f mysqlcheck.tmp.*
