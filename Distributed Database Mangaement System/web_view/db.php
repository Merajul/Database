<?php 
	$db = "(DESCRIPTION=(ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST= 192.168.42.135)(PORT = 1521)))(CONNECT_DATA=(SERVICE_NAME=ORCL)))";
	$conn = oci_connect("bloodbank", "", $db, 'AL32UTF8');
?>