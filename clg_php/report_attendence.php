
<?php include('head.php');?>
<?php include('header.php');?>
<?php include('sidebar.php');

 date_default_timezone_set('Asia/Kolkata');
 $current_date = date('Y-m-d');?>


        <div class="page-wrapper">
            
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Attendence Report</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Attendence Report</li>
                    </ol>
                </div>
            </div>
         
            <div class="container-fluid">
                
                <form class="form-horizontal" method="POST" name="attendencereportform" enctype="multipart/form-data">

                  <input type="hidden" name="currnt_date" class="form-control" value="<?php echo $currnt_date;?>">

                  <div class="form-group">
                      <div class="row">
                         <label class="col-sm-3 control-label">From Date  :</label>
                            <div>
                                <input type="date" name="fromDate" class="form-control" placeholder="fromDate">
                            </div>
                      </div>
                  </div>
                  
                  <div class="form-group">
                      <div class="row">
                         <label class="col-sm-3 control-label">To Date  :</label>
                            <div>
                                <input type="date" name="toDate" class="form-control" placeholder="toDate">
                            </div>
                      </div>
                  </div>

                  <div class="form-group">
                      <div class="row">
                          <label class="col-sm-3 control-label">Class</label>
                              <div>
                                <select type="text" name="class" class="form-control"  placeholder="Class" required="">
                                  <option value="">--Select Class--</option>
                                    <?php  
                                      $c1 = "SELECT * FROM `tbl_class`";
                                      $result = $conn->query($c1);
                                      if ($result->num_rows > 0) {
                                        while ($row = mysqli_fetch_array($result)) {?>
                                            <option value="<?php echo $row["id"];?>">
                                                <?php echo $row['classname'];?>
                                            </option>
                                            <?php }
                                      } else {
                                          echo "0 results";
                                             }
                                              ?>
                                </select>
                              </div>
                      </div>
                  </div>
                  <div class="form-group">
                      <div class="row">
                         
                            <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              &nbsp;<input type="submit" name="Done" value="Done">  
                            </div>
                      </div>
                  </div>

                  
                </form>
                <!-- /# row -->
               <div class="card">
                            <div class="card-body">
                              <div class="table-responsive m-t-40">
                                    <table id="myTable" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>Student Name</th>
                                                <th>Class</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                    <?php 
                                    include 'connect.php';
                                    if(isset($_POST['Done']))
                                    {
                                      $fromDate = $_POST['fromDate'];
                                      $toDate = $_POST['toDate'];
                                      $class = $_POST['class'];
                                      $sql = "SELECT * FROM tbl_attendence WHERE classname = '".$_POST['class']."' AND date BETWEEN '".$_POST['fromDate']."' AND '".$_POST['toDate']."' ";
                                    }
                                    else
                                    {
                                      $sql = "SELECT * FROM `tbl_attendence`";
                                    }
                                    
                                     $result = $conn->query($sql);
                                     $i=1;
                                     while($row = $result->fetch_assoc()) { 

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
                                          <?php $i++; } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
        
          
<?php include('footer.php');?>

<link rel="stylesheet" href="popup_style.css">
<?php if(!empty($_SESSION['success'])) {  ?>
<div class="popup popup--icon -success js_success-popup popup--visible">
  <div class="popup__background"></div>
  <div class="popup__content">
    <h3 class="popup__content__title">
      Success 
    </h1>
    <p><?php echo $_SESSION['success']; ?></p>
    <p>
      <button class="button button--success" data-for="js_success-popup">Close</button>
    </p>
  </div>
</div>
<?php unset($_SESSION["success"]);  
} ?>
<?php if(!empty($_SESSION['error'])) {  ?>
<div class="popup popup--icon -error js_error-popup popup--visible">
  <div class="popup__background"></div>
  <div class="popup__content">
    <h3 class="popup__content__title">
      Error 
    </h1>
    <p><?php echo $_SESSION['error']; ?></p>
    <p>
      <button class="button button--error" data-for="js_error-popup">Close</button>
    </p>
  </div>
</div>
<?php unset($_SESSION["error"]);  } ?>
    <script>
      var addButtonTrigger = function addButtonTrigger(el) {
  el.addEventListener('click', function () {
    var popupEl = document.querySelector('.' + el.dataset.for);
    popupEl.classList.toggle('popup--visible');
  });
};

Array.from(document.querySelectorAll('button[data-for]')).
forEach(addButtonTrigger);
    </script>