<?php include('head.php');?>
<?php include('header.php');?>
<?php include('sidebar.php'); ?>
 <?php include 'connect.php';?>

        <div class="page-wrapper">
     
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary"> View Attendence</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">View Attendence</li>
                    </ol>
                </div>
            </div>
        
            <div class="container-fluid">
		

                <!-- /# row -->
                 <div class="card">
                            <div class="card-body">
                                <div class="table-responsive m-t-40">
                                    <table id="myTable" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Sr. No.</th>
                                                <th>Student Name</th>
                                                <th>Class</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                    <?php 

		
		if(isset($_POST['btn_save']))
          	{ echo "string";
extract($_POST);
          		$stud_id = $_POST['stud_id'];
    			$date = $_POST['date'];
    			$classname = $_POST['classname'];
    			$status = $_POST['status'];
    				
    			$sql = "SELECT * FROM `tbl_attendence` ";
				$result=$conn->query($sql);
			    $row=mysqli_fetch_array($result);
			     while($row = $result->fetch_assoc()) {
    			
    				$sql = "INSERT INTO `tbl_attendence`(`stud_id`, `classname`, `date`, `status`) VALUES ('$stud_id','$classname','$date','$status')";
    				if ($conn->query($sql) === TRUE) {
		     			 $_SESSION['success']=' Record Successfully Added';
						}else{echo "string";}

					$sql1 = "SELECT * FROM `tbl_student` WHERE id='".$row['stud_id']."'";
                                     $result1=$conn->query($sql1);
                                     $row1=$result1->fetch_assoc();

                                    $sql2 = "SELECT * FROM `tbl_class` WHERE id='".$row['classname']."'";
                                     $result2=$conn->query($sql2);
                                     $row2=$result2->fetch_assoc();
    						
                                      ?>
                                            <tr>
                                                <td><?php echo $i;?></td>
                                                <td><?php echo $row1['sfname']." ".$row1['slname']; ?></td>
                                                
                                                <td><?php echo $row2['classname']; ?></td>
                                                
                                                <td><?php echo $row['date']; ?></td>
                                                <td><?php echo $row['status']; ?></td>
                                            </tr>
                                          <?php $i++; } } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
               
         
<?php include('footer.php');?>
