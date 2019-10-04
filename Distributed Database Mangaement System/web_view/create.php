<?php
  include 'inc/header.php';
 ?>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <form action="" method="post">
                <fieldset>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Name</label>
                        <input type="text" class="form-control" id="name">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Gender</label>
                        <input type="text" class="form-control" id="gender">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Blood Group</label>
                        <input type="text" class="form-control" id="blood_group">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address</label>
                        <input type="text" class="form-control" id="address">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Phone</label>
                        <input type="text" class="form-control" id="phone">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Eligibility</label>
                        <input type="text" class="form-control" id="eligibility">
                    </div> 
                    <button class="btn btn-primary" id="btn_submit">Submit</button>
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
    $('#btn_submit').click(function(){
        var name = $('#name').val();
        var gender = $('#gender').val();
        var blood_group = $('#blood_group').val();
        var address = $('#address').val();
        var phone = $('#phone').val();
        var eligibility = $('#eligibility').val();

        var user_data = {
            name: name,
            gender: gender,
            blood_group: blood_group,
            address: address,
            phone: phone,
            eligibility: eligibility
        };

        $.ajax({
            url: "InsertDonorInformation.php",
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