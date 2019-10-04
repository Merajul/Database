<?php
	include 'db.php';

	$user_data = $_REQUEST['user_data'];
	$name = $user_data['name'];
	$gender = $user_data['gender'];
	$blood_group = $user_data['blood_group'];
	$address = $user_data['address'];
	$phone = $user_data['phone'];
	$eligibility = $user_data['eligibility'];

	$sql = "INSERT INTO DONOR(DONORNAME, DONORID, DONORGENDER, DONORBLOODGROUP, DONORADDRESS, DONORPHONENUMBER, ELIGIBILITY) VALUES('$name', 3, '$gender', '$blood_group', '$address', '$phone', '$eligibility')";

	$res = oci_parse($conn, $sql);
	$execute = oci_execute($res, OCI_DEFAULT);
	if ($execute) {
		oci_commit($conn);
		echo "Your subscription has been confirmed";
	}
	else echo "Your subscription has been failed";
?>