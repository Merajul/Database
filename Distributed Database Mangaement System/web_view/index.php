<?php
  include 'inc/header.php';
 ?>

<div class="container">
    <div class="row">
        <legend>CRUD Application</legend>
        <div class="col-md-6 col-lg-6">
            
        </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Blood Group</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Eligibility</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                
                <?php
                    require "db.php";

                    $query = "SELECT * FROM DONOR";
                    $res = oci_parse ($conn, $query);
                    oci_execute ($res,OCI_DEFAULT);

                    while ($row = oci_fetch_array($res,OCI_BOTH)) {
                ?>
                <tr class="table-active">
                <td> <?php echo $row['DONORID'];?> </td>
                <td> <?php echo $row['DONORNAME'];?> </td>
                <td> <?php echo $row['DONORGENDER'];?> </td>
                <td> <?php echo $row['DONORBLOODGROUP'];?> </td>
                <td> <?php echo $row['DONORADDRESS'];?> </td>
                <td> <?php echo $row['DONORPHONENUMBER'];?> </td>
                <td> <?php echo $row['ELIGIBILITY'];?> </td>
                <td>
                    <button class="btn btn-primary" onclick="update('<?php echo $row['DONORID'];?>')">Update
                    </button>
                </td>
                </tr>
                <?php } ?>  
            </tbody>
        </table>
    </div>
</div>
<?php
  include 'inc/footer.php';
 ?>
<script>
  function update(donor_id)
  {
    window.location = 'update.php?donor_id=' + donor_id;
  }
</script>
