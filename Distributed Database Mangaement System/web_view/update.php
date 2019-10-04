<?php
  include 'inc/header.php';
 ?>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <form action="" method="post">
                <fieldset>
                    <?php
                        require "db.php";
                        $donor_id = $_GET['donor_id'];
                        $query = "SELECT * FROM DONOR WHERE DONORID = $donor_id";
                        $res = oci_parse ($conn, $query);
                        oci_execute ($res,OCI_DEFAULT);

                        while ($row = oci_fetch_array($res,OCI_BOTH)) {
                    ?>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Name</label>
                        <input class="form-control" type="hidden" value="<?php echo $_GET['donor_id'];?>" id="hidden_donor_id">
                        <input type="text" class="form-control" id="name" value="<?php echo $row['DONORNAME'];?>">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Gender</label>
                        <input type="text" class="form-control" id="gender" value="<?php echo $row['DONORGENDER'];?>">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Blood Group</label>
                        <input type="text" class="form-control" id="blood_group" value="<?php echo $row['DONORBLOODGROUP'];?>">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address</label>
                        <input type="text" class="form-control" id="address" value="<?php echo $row['DONORADDRESS'];?>">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Phone</label>
                        <input type="text" class="form-control" id="phone" value="<?php echo $row['DONORPHONENUMBER'];?>">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Eligibility</label>
                        <input type="text" class="form-control" id="eligibility" value="<?php echo $row['ELIGIBILITY'];?>">
                    </div>

                    <?php } ?> 
                    <button class="btn btn-primary" id="btn_update">Update</button>
                    <a href="index.php" class="btn btn-primary"> Back </a>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<?php
  include 'inc/footer.php';
 ?>
 <script type="text/javascript">
    $('#btn_update').click(function(){
        var hidden_donor_id = $('#hidden_donor_id').val();
        var name = $('#name').val();
        var gender = $('#gender').val();
        var blood_group = $('#blood_group').val();
        var address = $('#address').val();
        var phone = $('#phone').val();
        var eligibility = $('#eligibility').val();

        var user_data = {
            hidden_donor_id: hidden_donor_id,
            name: name,
            gender: gender,
            blood_group: blood_group,
            address: address,
            phone: phone,
            eligibility: eligibility
        };

        $.ajax({
            url: "UpdateDonorInformation.php",
            method: "POST",
            data: {user_data},
            success: function (data)
            {
                console.log(data);
                window.location = 'index.php';
            },
        });
    });
 </script>