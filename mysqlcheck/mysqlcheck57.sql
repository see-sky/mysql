SELECT '<html>'\G
SELECT '<head>'\G
SELECT '<title>ces_dbcheck_mysql.html</title>'\G
SELECT '<style type="text/css">'\G
SELECT 'body {font:8pt Arial,Helvetica,Verdana,Geneva,sans-serif; color:black; background:white;}'\G
SELECT 'pre {font:8pt Monaco,"Courier New",Courier,monospace;}'\G
SELECT 'h1 {font-size:15pt; font-weight:bold; color:#000000;}'\G
SELECT 'h2 {font-size:10pt; font-weight:bold; color:#000000;}'\G
SELECT 'li {font-size:8pt; font-weight:bold; color:#336699; padding:0.1em 0 0 0;}'\G
SELECT 'table {font-size:8pt; color:black; background:white;}'\G
SELECT 'th   {font-weight:bold; background:#336699; color:#ffffff; vertical-align:bottom; padding-left:3pt;  padding-right:3pt; padding-top:1pt; padding-bottom:1pt;}'\G
SELECT 'th.l {font-weight:bold; background:#986634; color:#ffffff; vertical-align:bottom; padding-left:3pt;  padding-right:3pt; padding-top:1pt; padding-bottom:1pt;}'\G
SELECT 'a    {font-weight:bold; text-decoration: none; color: white;}'\G
SELECT 'td   {text-align:left;  background:#ffffff; vertical-align:top; padding-left:3pt; padding-right:3pt; padding-top:1pt;   padding-bottom:1pt; }'\G
SELECT 'td.w {font:8pt Arial,Helvetica,Geneva,sans-serif;color:black;background:White;   vertical-align:top;}'\G
SELECT 'td.y {font:8pt Arial,Helvetica,Geneva,sans-serif;color:black;background:#FFFFCC; vertical-align:top;}'\G
SELECT 'td.x {font:8pt Arial,Helvetica,Geneva,sans-serif;color:black;background:#FF99CC; vertical-align:top;}'\G
SELECT 'td.c {text-align:center;}'\G
SELECT 'td.l {text-align:left;}'\G
SELECT 'td.r {text-align:right;}'\G
SELECT 'font.n {font-size:8pt; font-style:italic; color:#336699;}'\G
SELECT 'font.f {font-size:8pt; color:#999999;}'\G
SELECT '</style>'\G
SELECT '</head>'\G
SELECT '<body>'\G

SELECT '<h1>MySQL Database Health Check Report v0.0.3</h1>'\G
SELECT '<h2>Support MySQL Database Version 5.5,5.6,5.7,8.0</h2>'\G
SELECT '<h2>China Etek Service & Technology Co., Ltd.<h2>'\G
SELECT '<h2>http://www.ce-service.com.cn<h2>'\G
SELECT '<hr />'\G
SELECT '<h2>  </h2>'\G

SELECT '<h1>Main Report</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#10">1. OS Information</a></li>'\G
SELECT '<li><a style="color:#663300" href="#20">2. Database Information</a></li>'\G
SELECT '<li><a style="color:#663300" href="#30">3. Innodb Information</a></li>'\G
SELECT '<li><a style="color:#663300" href="#40">4. Schema Information</a></li>'\G
SELECT '<li><a style="color:#663300" href="#50">5. Replicate Information</a></li>'\G
SELECT '<li><a style="color:#663300" href="#60">6. Log Check</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="10"></a>'\G
SELECT '<h1>1. OS Information</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#101">1.1  OS Info</a></li>'\G
SELECT '<li><a style="color:#663300" href="#102">1.2  Memory Free</a></li>'\G
SELECT '<li><a style="color:#663300" href="#103">1.3  Disk Usage</a></li>'\G
SELECT '<li><a style="color:#663300" href="#104">1.4  Disk Inode Usage</a></li>'\G
SELECT '<li><a style="color:#663300" href="#105">1.5  Sysctl Review</a></li>'\G
SELECT '<li><a style="color:#663300" href="#106">1.6  Limits for MySQLD</a></li>'\G
SELECT '<li><a style="color:#663300" href="#107">1.7  Iptables</a></li>'\G
SELECT '<li><a style="color:#663300" href="#108">1.8  Vmstat</a></li>'\G
SELECT '<li><a style="color:#663300" href="#109">1.9  SAR</a></li>'\G
SELECT '<li><a style="color:#663300" href="#110">1.10 OS & HW Time Diff</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="101"></a>'\G
SELECT '<h2>1.1 OS Info</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">CheckList</th>'\G
SELECT '<th width="300">Values</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMINF'\G
SELECT '</table>'\G

SELECT '<a name="102"></a>'\G
SELECT '<h2>1.2 Memory Free</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50"> </th>'\G
SELECT '<th width="50">total</th>'\G
SELECT '<th width="50">used</th>'\G
SELECT '<th width="50">free</th>'\G
SELECT '<th width="50">shared</th>'\G
SELECT '<th width="50">buff/cache</th>'\G
SELECT '<th width="50">available</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMFREE'\G
SELECT '</table>'\G

SELECT '<a name="103"></a>'\G
SELECT '<h2>1.3 Disk Usages</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Filesystem</th>'\G
SELECT '<th width="50">Size</th>'\G
SELECT '<th width="50">Used</th>'\G
SELECT '<th width="50">Avail</th>'\G
SELECT '<th width="50">Use%</th>'\G
SELECT '<th width="100">Mounted on</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMDFU'\G
SELECT '</table>'\G

SELECT '<a name="104"></a>'\G
SELECT '<h2>1.4 Disk Inode Usages</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Filesystem</th>'\G
SELECT '<th width="50">Inodes</th>'\G
SELECT '<th width="50">IUsed</th>'\G
SELECT '<th width="50">IFree</th>'\G
SELECT '<th width="50">IUse%</th>'\G
SELECT '<th width="100">Mounted on</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMDFI'\G
SELECT '</table>'\G

SELECT '<a name="105"></a>'\G
SELECT '<h2>1.5 Sysctl Review</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Parameter</th>'\G
SELECT '<th width="300">Values</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMSYSCTL'\G
SELECT '</table>'\G

SELECT '<a name="106"></a>'\G
SELECT '<h2>1.6 Limits for MySQLD</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Limit</th>'\G
SELECT '<th width="100">Soft Limit</th>'\G
SELECT '<th width="100">Hard Limit</th>'\G
SELECT '<th width="100">Units</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMLIMITS'\G
SELECT '</table>'\G

SELECT '<a name="107"></a>'\G
SELECT '<h2>1.7 Iptables</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="600">Iptables</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMIP4'\G
SELECT '</table>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="600">Ip6tables</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMIP6'\G
SELECT '</table>'\G

SELECT '<a name="108"></a>'\G
SELECT '<h2>1.8 Vmstat</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="20"> </th>'\G
SELECT '<th width="20">r</th>'\G
SELECT '<th width="20">b</th>'\G
SELECT '<th width="20">swpd</th>'\G
SELECT '<th width="20">free</th>'\G
SELECT '<th width="20">buff</th>'\G
SELECT '<th width="20">cache</th>'\G
SELECT '<th width="20">si</th>'\G
SELECT '<th width="20">so</th>'\G
SELECT '<th width="20">bi</th>'\G
SELECT '<th width="20">bo</th>'\G
SELECT '<th width="20">in</th>'\G
SELECT '<th width="20">cs</th>'\G
SELECT '<th width="20">us%</th>'\G
SELECT '<th width="20">sy%</th>'\G
SELECT '<th width="20">id%</th>'\G
SELECT '<th width="20">wa%</th>'\G
SELECT '<th width="20">st%</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMVMSTAT'\G
SELECT '</table>'\G

SELECT '<a name="109"></a>'\G
SELECT '<h2>1.9 SAR</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="20"> </th>'\G
SELECT '<th width="20">DEV</th>'\G
SELECT '<th width="20">tps</th>'\G
SELECT '<th width="20">rd_sec/s</th>'\G
SELECT '<th width="20">wr_sec/s</th>'\G
SELECT '<th width="50">avgrq-sz</th>'\G
SELECT '<th width="50">avgqu-sz</th>'\G
SELECT '<th width="20">await</th>'\G
SELECT '<th width="20">svctm</th>'\G
SELECT '<th width="50">%util</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMSAR'\G
SELECT '</table>'\G

SELECT '<a name="110"></a>'\G
SELECT '<h2>1.10 OS & HW Time Diff</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">OS Time</th>'\G
SELECT '<th width="200">HW Time</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMHWCLOCK'\G
SELECT '</table>'\G

SELECT '<a name="20"></a>'\G
SELECT '<h1>2. Database Information</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#201">2.1  Database Info</a></li>'\G
SELECT '<li><a style="color:#663300" href="#202">2.2  Database Dir</a></li>'\G
SELECT '<li><a style="color:#663300" href="#203">2.3  Engine</a></li>'\G
SELECT '<li><a style="color:#663300" href="#204">2.4  Plugin</a></li>'\G
SELECT '<li><a style="color:#663300" href="#205">2.5  User</a></li>'\G
SELECT '<li><a style="color:#663300" href="#206">2.6  Resource Usages</a></li>'\G
SELECT '<li><a style="color:#663300" href="#207">2.7  Memory</a></li> '\G
SELECT '<li><a style="color:#663300" href="#208">2.8  Logs</a></li> '\G
SELECT '<li><a style="color:#663300" href="#209">2.9  Binlog</a></li>'\G
SELECT '<li><a style="color:#663300" href="#210">2.10 GTID</a></li>'\G
SELECT '<li><a style="color:#663300" href="#211">2.11 Qcache</a></li>'\G
SELECT '<li><a style="color:#663300" href="#212">2.12 Optimizer</a></li>'\G
SELECT '<li><a style="color:#663300" href="#213">2.13 Performance_schema Setup</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="201"></a>'\G
SELECT '<h2>2.1 Database Info</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">CheckList</th>'\G
SELECT '<th width="200">Values</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>','MySQL Version:','</td><td>',version(),'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Inoodb Version:','</td><td>',@@innodb_version,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Character Set Server:','</td><td>',@@character_set_server,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Collation Server:','</td><td>',@@collation_server,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','TX Isolation:','</td><td>',@@tx_isolation,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Auto Commit:','</td><td>',@@autocommit,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Default Engine:','</td><td>',@@default_storage_engine,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Port:','</td><td>',@@port,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Server_id:','</td><td>',@@server_id,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Server_uuid:','</td><td>',@@server_uuid,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Interactive_timeout:','</td><td>',@@interactive_timeout,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Wait_timeout:','</td><td>',@@wait_timeout,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','Max_allowed_packet:','</td><td>',@@max_allowed_packet,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="202"></a>'\G
SELECT '<h2>2.2 Database Dir</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">CheckList</th>'\G
SELECT '<th width="200">Values</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>','basedir','</td><td>',@@basedir,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','datadir','</td><td>',@@datadir,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','plugin_dir','</td><td>',@@plugin_dir,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','tmpdir','</td><td>',@@tmpdir,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','slave_load_tmpdir','</td><td>',@@slave_load_tmpdir,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="203"></a>'\G
SELECT '<h2>2.3 Engine</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">ENGINE</th>'\G
SELECT '<th width="100">SUPPORT</th>'\G
SELECT '<th width="100">TRANSACTIONS</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',ENGINE,'</td><td>',SUPPORT,'</td><td>',TRANSACTIONS,'</td></tr>') from information_schema.engines order by ENGINE\G
SELECT '</table>'\G

SELECT '<a name="204"></a>'\G
SELECT '<h2>2.4 Plugin</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">PLUGIN_NAME</th>'\G
SELECT '<th width="100">PLUGIN_VERSION</th>'\G
SELECT '<th width="100">PLUGIN_STATUS</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',PLUGIN_NAME,'</td><td>',PLUGIN_VERSION,'</td><td>',PLUGIN_STATUS,'</td></tr>') from information_schema.plugins order by PLUGIN_TYPE\G
SELECT '</table>'\G

SELECT '<a name="205"></a>'\G
SELECT '<h2>2.5 User</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Host</th>'\G
SELECT '<th width="50">User</th>'\G
SELECT '<th width="50">Password_expired</th>'\G
SELECT '<th width="50">Password_lifetime</th>'\G
SELECT '<th width="50">Account_locked</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',Host,'</td><td>',User,'</td><td>',password_expired,'</td><td>',password_lifetime,'</td><td>',account_locked,'</td></tr>') from mysql.user\G
SELECT '</table>'\G

SELECT '<a name="206"></a>'\G
SELECT '<h2>2.6 Resource Usages</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Resource</th>'\G
SELECT '<th width="200">Max_value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','max_connections','</td><td>',@@max_connections,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Connections','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Connections'\G
select CONCAT_WS('','<tr><td class=x>','Max_used_connections','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Max_used_connections'\G
select CONCAT_WS('','<tr><td class=y>','table_open_cache','</td><td>',@@table_open_cache,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Open_tables','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Open_tables'\G
select CONCAT_WS('','<tr><td class=x>','Opened_tables','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Opened_tables'\G
select CONCAT_WS('','<tr><td class=y>','open_files_limit','</td><td>',@@open_files_limit,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Open_files','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Open_files'\G
select CONCAT_WS('','<tr><td class=x>','Opened_files','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Opened_files'\G
select CONCAT_WS('','<tr><td class=y>','binlog_cache_size','</td><td>',@@binlog_cache_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Binlog_cache_use','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Binlog_cache_use'\G
select CONCAT_WS('','<tr><td class=x>','Binlog_cache_disk_use','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Binlog_cache_disk_use'\G
select CONCAT_WS('','<tr><td class=y>','binlog_stmt_cache_size','</td><td>',@@binlog_stmt_cache_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Binlog_stmt_cache_use','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Binlog_stmt_cache_use'\G
select CONCAT_WS('','<tr><td class=x>','Binlog_stmt_cache_disk_use','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Binlog_stmt_cache_disk_use'\G
select CONCAT_WS('','<tr><td class=y>','thread_cache_size','</td><td>',@@thread_cache_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Threads_cached','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Threads_cached'\G
select CONCAT_WS('','<tr><td class=x>','Threads_connected','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Threads_connected'\G
select CONCAT_WS('','<tr><td class=x>','Table_locks_immediate','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Table_locks_immediate'\G
select CONCAT_WS('','<tr><td class=x>','Table_locks_waited','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Table_locks_waited'\G
SELECT '</table>'\G

SELECT '<a name="207"></a>'\G
SELECT '<h2>2.7 Memory</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Memory Pool</th>'\G
SELECT '<th width="200">Size</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','read_buffer_size','</td><td>',@@read_buffer_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','read_rnd_buffer_size','</td><td>',@@read_rnd_buffer_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','sort_buffer_size','</td><td>',@@sort_buffer_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','thread_stack','</td><td>',@@thread_stack,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','join_buffer_size','</td><td>',@@join_buffer_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','binlog_cache_size','</td><td>',@@binlog_cache_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','binlog_stmt_cache_size','</td><td>',@@binlog_stmt_cache_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','tmp_table_size_mb','</td><td>',round(@@tmp_table_size/1024/1024),'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','max_heap_table_size_mb','</td><td>',round(@@max_heap_table_size/1024/1024),'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Created_tmp_disk_tables','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Created_tmp_disk_tables'\G
select CONCAT_WS('','<tr><td class=x>','Created_tmp_tables','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Created_tmp_tables'\G
SELECT '</table>'\G

SELECT '<a name="208"></a>'\G
SELECT '<h2>2.8 Logs</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','log_error','</td><td>',@@log_error,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','log_warnings','</td><td>',@@log_warnings,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','general_log','</td><td>',@@general_log,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','general_log_file','</td><td>',@@general_log_file,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','slow_query_log','</td><td>',@@slow_query_log,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','slow_query_log_file','</td><td>',@@slow_query_log_file,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','log_queries_not_using_indexes','</td><td>',@@log_queries_not_using_indexes,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="209"></a>'\G
SELECT '<h2>2.9 Binlog</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','log_bin','</td><td>',@@log_bin,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','log_bin_basename','</td><td>',@@log_bin_basename,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','log_bin_index','</td><td>',@@log_bin_index,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','sync_binlog','</td><td>',@@sync_binlog,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','binlog_order_commits','</td><td>',@@binlog_order_commits,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','binlog_format','</td><td>',@@binlog_format,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','binlog_checksum','</td><td>',@@binlog_checksum,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','expire_logs_days','</td><td>',@@expire_logs_days,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="210"></a>'\G
SELECT '<h2>2.10 GTID</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_variables where VARIABLE_NAME like '%gtid_%' and VARIABLE_NAME not in ('gtid_executed','gtid_purged')\G
SELECT '</table>'\G

SELECT '<a name="211"></a>'\G
SELECT '<h2>2.11 Qcache</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','query_cache_size','</td><td>',@@query_cache_size,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','query_cache_type','</td><td>',@@query_cache_type,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','query_cache_min_res_unit','</td><td>',@@query_cache_min_res_unit,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','query_cache_limit','</td><td>',@@query_cache_limit,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','query_cache_wlock_invalidate','</td><td>',@@query_cache_wlock_invalidate,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=x>','Qcache_hits','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Qcache_hits'\G
select CONCAT_WS('','<tr><td class=x>','Qcache_inserts','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Qcache_inserts'\G
select CONCAT_WS('','<tr><td class=x>','Qcache_queries_in_cache','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Qcache_queries_in_cache'\G
select CONCAT_WS('','<tr><td class=x>','Qcache_free_blocks','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Qcache_free_blocks'\G
select CONCAT_WS('','<tr><td class=x>','Qcache_lowmem_prunes','</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME='Qcache_lowmem_prunes'\G
SELECT '</table>'\G

SELECT '<a name="212"></a>'\G
SELECT '<h2>2.12 Optimizer</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>',VARIABLE_NAME,'</td><td width="200" style="word-break:break-all">',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_variables where VARIABLE_NAME like '%optimize%'\G
SELECT '</table>'\G

SELECT '<a name="213"></a>'\G
SELECT '<h2>2.13 Performance_schema Setup</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>',NAME,'</td><td>',ENABLED,'</td></tr>') from performance_schema.setup_consumers\G
SELECT '</table>'\G

SELECT '<a name="30"></a>'\G
SELECT '<h1>3. Innodb Information</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#301">3.1  Innodb Variables</a></li>'\G
SELECT '<li><a style="color:#663300" href="#302">3.2  Innodb Datafile</a></li>'\G
SELECT '<li><a style="color:#663300" href="#303">3.3  Innodb Logfile</a></li>'\G
SELECT '<li><a style="color:#663300" href="#304">3.4  Innodb Undofile</a></li>'\G
SELECT '<li><a style="color:#663300" href="#305">3.5  Innodb Tempfile</a></li>'\G
SELECT '<li><a style="color:#663300" href="#306">3.6  Innodb Trx Lock</a></li>'\G
SELECT '<li><a style="color:#663300" href="#307">3.7  Innodb Engine Stauts</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="301"></a>'\G
SELECT '<h2>3.1 Innodb Variables</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_version','</td><td>',@@innodb_version,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_buffer_pool_size_mb','</td><td>',round(@@innodb_buffer_pool_size/1024/1024),'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_buffer_pool_instances','</td><td>',@@innodb_buffer_pool_instances,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_flush_log_at_trx_commit','</td><td>',@@innodb_flush_log_at_trx_commit,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_doublewrite','</td><td>',@@innodb_doublewrite,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_flush_method','</td><td>',@@innodb_flush_method,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_io_capacity','</td><td>',@@innodb_io_capacity,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_io_capacity_max','</td><td>',@@innodb_io_capacity_max,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_lock_wait_timeout','</td><td>',@@innodb_lock_wait_timeout,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=x>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME like 'Innodb_buffer_pool_read%'\G
SELECT '</table>'\G

SELECT '<a name="302"></a>'\G
SELECT '<h2>3.2 Innodb Datafile</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_data_file_path','</td><td>',@@innodb_data_file_path,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_data_home_dir','</td><td>',@@innodb_data_home_dir,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_file_per_table','</td><td>',@@innodb_file_per_table,'</td></tr>')\G
SELECT CONCAT_WS('','<tr><td class=y>','innodb_page_size','</td><td>',@@innodb_page_size,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="303"></a>'\G
SELECT '<h2>3.3 Innodb Logfile</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','innodb_log_group_home_dir','</td><td>',@@innodb_log_group_home_dir,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','innodb_log_file_size_mb','</td><td>',round(@@innodb_log_file_size/1024/1024),'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','innodb_log_files_in_group','</td><td>',@@innodb_log_files_in_group,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="304"></a>'\G
SELECT '<h2>3.4 Innodb Undofile</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','innodb_undo_directory','</td><td>',@@innodb_undo_directory,'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','innodb_max_undo_log_size_mb','</td><td>',round(@@innodb_max_undo_log_size/1024/1024),'</td></tr>')\G
select CONCAT_WS('','<tr><td class=y>','innodb_undo_tablespaces','</td><td>',@@innodb_undo_tablespaces,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="305"></a>'\G
SELECT '<h2>3.5 Innodb Tempfile</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>','innodb_temp_data_file_path','</td><td>',@@innodb_temp_data_file_path,'</td></tr>')\G
SELECT '</table>'\G

SELECT '<a name="306"></a>'\G
SELECT '<h2>3.6 Innodb Trx Lock</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Waiting_thread</th>'\G
SELECT '<th width="50">Waiting_trx_id</th>'\G
SELECT '<th width="50">Waiting_query</th>'\G
SELECT '<th width="50">Blocking_thread</th>'\G
SELECT '<th width="50">Blocking_trx_id</th>'\G
SELECT '<th width="50">Blocking_query</th>'\G
SELECT '<th width="50">TRX_started</th>'\G
SELECT '<th width="50">TRX_wait_started</th>'\G
SELECT '</tr>'\G
select CONCAT_WS('','<tr><td class=y>',r.trx_mysql_thread_id,'</td><td>',r.trx_id,'</td><td>',r.trx_query,'</td><td>',b.trx_mysql_thread_id,'</td><td>',b.trx_id,'</td><td>',b.trx_query,'</td><td>',b.trx_started,'</td><td>',b.trx_wait_started,'</td></tr>')
from information_schema.innodb_lock_waits w 
 inner join information_schema.innodb_trx b on b.trx_id=w.blocking_trx_id 
 inner join information_schema.innodb_trx r on r.trx_id=w.requesting_trx_id\G
SELECT '</table>'\G

SELECT '<a name="307"></a>'\G
SELECT '<h2>3.7 Innodb Engine Stauts</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="600">Innodb Status</th>'\G
SELECT '</tr>'\G
SELECT 'INNODBSTATUS'\G
SELECT '</table>'\G

SELECT '<a name="40"></a>'\G
SELECT '<h1>4. Schema Information</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#401">4.1  Table Engine Type</a></li>'\G
SELECT '<li><a style="color:#663300" href="#402">4.2  Table Data Length</a></li>'\G
SELECT '<li><a style="color:#663300" href="#403">4.3  Routine</a></li>'\G
SELECT '<li><a style="color:#663300" href="#404">4.4  Trigger</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="401"></a>'\G
SELECT '<h2>4.1 Table Engine Type</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Schema</th>'\G
SELECT '<th width="50">Engine</th>'\G
SELECT '<th width="50">CNT</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',TABLE_SCHEMA,'</td><td>',ENGINE,'</td><td>',CNT,'</td></tr>') 
from (select TABLE_SCHEMA,ENGINE,count(*) CNT from information_schema.tables 
where TABLE_SCHEMA not in ('sys','mysql','performance_schema','information_schema')
group by TABLE_SCHEMA,ENGINE order by 1,2) v\G
SELECT '</table>'\G

SELECT '<a name="402"></a>'\G
SELECT '<h2>4.2 Table Data Length</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Schema</th>'\G
SELECT '<th width="50">Engine</th>'\G
SELECT '<th width="50">DATA_LENGTH</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',TABLE_SCHEMA,'</td><td>',ENGINE,'</td><td>',DATA_LENGTH,'</td></tr>') 
from (select TABLE_SCHEMA,ENGINE,DATA_LENGTH from information_schema.tables 
where TABLE_SCHEMA not in ('sys','mysql','performance_schema','information_schema')
and DATA_LENGTH is not null order by 3 desc limit 10) v\G
SELECT '</table>'\G

SELECT '<a name="403"></a>'\G
SELECT '<h2>4.3 Routine</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Schema</th>'\G
SELECT '<th width="50">Name</th>'\G
SELECT '<th width="50">Type</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',ROUTINE_SCHEMA,'</td><td>',ROUTINE_NAME,'</td><td>',ROUTINE_TYPE,'</td></tr>') 
from information_schema.routines\G
SELECT '</table>'\G

SELECT '<a name="404"></a>'\G
SELECT '<h2>4.4 Trigger</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="50">Schema</th>'\G
SELECT '<th width="50">Name</th>'\G
SELECT '<th width="50">Event_manipulation</th>'\G
SELECT '<th width="50">Action_timing</th>'\G
SELECT '<th width="50">Event_object_table</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',TRIGGER_SCHEMA,'</td><td>',TRIGGER_NAME,'</td><td>',EVENT_MANIPULATION,'</td><td>',ACTION_TIMING,'</td><td>',EVENT_OBJECT_TABLE,'</td></tr>') 
from information_schema.triggers\G
SELECT '</table>'\G

SELECT '<a name="50"></a>'\G
SELECT '<h1>5. Replicate Information</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#501">5.1  Relay Logs</a></li>'\G
SELECT '<li><a style="color:#663300" href="#502">5.2  Rpl Symi Sync</a></li>'\G
SELECT '<li><a style="color:#663300" href="#503">5.3 Group Replication</a></li>'\G
SELECT '<li><a style="color:#663300" href="#504">5.4  Replicate Master Status</a></li>'\G
SELECT '<li><a style="color:#663300" href="#505">5.5  Replicate Slave Status</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="501"></a>'\G
SELECT '<h2>5.1 Relay Logs</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_variables where VARIABLE_NAME like '%relay%'\G
SELECT '</table>'\G

SELECT '<a name="502"></a>'\G
SELECT '<h2>5.2 Rpl Symi Sync</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_variables where VARIABLE_NAME like '%rpl%'\G
SELECT CONCAT_WS('','<tr><td class=x>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME like '%rpl%'\G
SELECT '</table>'\G

SELECT '<a name="503"></a>'\G
SELECT '<h2>5.3 Group Replication</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="200">Name</th>'\G
SELECT '<th width="200">Value</th>'\G
SELECT '</tr>'\G
SELECT CONCAT_WS('','<tr><td class=y>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_variables where VARIABLE_NAME like '%group_rep%'\G
SELECT CONCAT_WS('','<tr><td class=x>',VARIABLE_NAME,'</td><td>',VARIABLE_VALUE,'</td></tr>') from performance_schema.global_status where VARIABLE_NAME like '%group_rep%'\G
SELECT '</table>'\G

SELECT '<a name="504"></a>'\G
SELECT '<h2>5.4 Replicate Master Status</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="600">Master Status</th>'\G
SELECT '</tr>'\G
SELECT 'RPLMASTER'\G
SELECT '</table>'\G

SELECT '<a name="505"></a>'\G
SELECT '<h2>5.5 Replicate Slave Status</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th width="600">Slave Status</th>'\G
SELECT '</tr>'\G
SELECT 'RPLSLAVE'\G
SELECT '</table>'\G

SELECT '<a name="60"></a>'\G
SELECT '<h1>6. Log Check</h1>'\G
SELECT '<ul>'\G
SELECT '<li><a style="color:#663300" href="#601">6.1  Error Log</a></li>'\G
SELECT '<li><a style="color:#663300" href="#602">6.2  Slow Log</a></li>'\G
SELECT '<li><a style="color:#663300" href="#603">6.3  OS Message Log</a></li>'\G
SELECT '</ul>'\G
SELECT '<hr />'\G

SELECT '<a name="601"></a>'\G
SELECT '<h2>6.1 Error Log</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th>Error Log</th>'\G
SELECT '</tr>'\G
SELECT 'ERRORLOG'\G
SELECT '</table>'\G

SELECT '<a name="602"></a>'\G
SELECT '<h2>6.2 Slow Log</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th>Slow Log</th>'\G
SELECT '</tr>'\G
SELECT 'SLOWLOG'\G
SELECT '</table>'\G

SELECT '<a name="603"></a>'\G
SELECT '<h2>6.3 OS Message Log</h2>'\G
SELECT '<table border="1px" bordercolor="#000000" cellspacing="0px" style="border-collapse:collapse">'\G
SELECT '<tr>'\G
SELECT '<th>OS Message Log</th>'\G
SELECT '</tr>'\G
SELECT 'SYSTEMLOG'\G
SELECT '</table>'\G

SELECT '</html>'\G