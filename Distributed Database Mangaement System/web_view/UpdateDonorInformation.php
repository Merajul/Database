<?php
	require_once 'db.php';

	$user_data = $_REQUEST['user_data'];
	$hidden_donor_id = $user_data['hidden_donor_id'];
	$name = $user_data['name'];
	$gender = $user_data['gender'];
	$blood_group = $user_data['blood_group'];
	$address = $user_data['address'];
	$phone = $user_data['phone'];
	$eligibility = $user_data['eligibility'];

	$update = "UPDATE DONOR SET DONORNAME=$name, 
	DONORGENDER=$gender,
	DONORBLOODGROUP=$blood_group,
	DONORADDRESS=$address,
	DONORPHONENUMBER=$phone,
	ELIGIBILITY=$eligibility  WHERE DONORID=$hidden_donor_id";
	$stmt = oci_parse($conn, $update);
	oci_execute($stmt, OCI_DEFAULT);
?>