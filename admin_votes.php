<?php
  require 'app/app.php';
    if(isset($_POST["add_new_course"])){
        $name = $_POST["name"];
        $cat = $_POST["cat"];
        $date1 = $_POST["date1"];
        $date2 = $_POST["date2"];
        $sql = "INSERT INTO vote (name, cat, date1, date2) VALUES ('$name', '$cat', '$date1', '$date2')";
        if(phpRunSingleQuery($sql)){
            js_alert("Vote Added!");
            js_redirect("admin_votes.php");
        }else{
            js_alert("ERROR");
        }
    }
?>
<!DOCTYPE html>
<html lang="en">

<?php
  $path =  "";
  $title =  "Votes";
  require 'parts/head.php';
?>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
<body>

  <?php require 'parts/nav.php'; ?>

  <!-- Page Content -->
  <div class="container">

      <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-white">
              <li class="breadcrumb-item"><a href="admin_dashboard.php" class="appColor">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Votes</li>
          </ol>
      </nav>


    <div class="widget-content">
        <div class="row mt-3">
            <div class="col-md-3" id="customNavTabs">
                <ul class="nav nav-tabs flex-column" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="true">
                            <i class="fas fa-2x fa-poll appColor mr-2"></i>
                            <span>Create Vote</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="organization-tab" data-toggle="tab" href="#organization" role="tab" aria-controls="organization" aria-selected="false">
                            <i class="fas fa-2x fa-tasks appColor mr-2"></i>
                            <span>Manage Votes</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-9">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="card">
                                    <div class="card-header">
                                        <i class="fas fa-edit mr-2"></i>Create a new Vote
                                    </div>
                                    <div class="card-body">
                                        <form method="POST" action="">
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-3 col-form-label">Name</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" id="inputEmail3" name="name" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-3 col-form-label">Category:</label>
                                                <div class="col-sm-6">
                                                    <select class="form-control" id="exampleFormControlSelect1" name="cat">
                                                        <option>Select Category</option>
                                                        <option value="Canine Advanced">Canine Advanced</option>
                                                        <option value="Canine Basic">Canine Basic</option>
                                                        <option value="Certification">Certification</option>
                                                        <option value="Contacts">Contacts</option>
                                                        <option value="Directory">Directory</option>
                                                        <option value="Events">Events</option>
                                                        <option value="For LMS">For LMS</option>
                                                        <option value="Membership">Membership</option>
                                                        <option value="Resources">Resources</option>
                                                        <option value="Webinar">Webinar</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-inline">
                                                <div class="form-group mb-2">
                                                    <label for="staticEmail2">Open on</label>
                                                    <input type="date" class="form-control ml-2" name="date1">
                                                </div>
                                                <div class="form-group mb-2 ml-2">
                                                    <label for="staticEmail2">Close on</label>
                                                    <input type="date" class="form-control ml-2" name="date2">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12 text-center">
                                                    <button type="submit" class="btn btn-info w-100 mt-2 bg-appColor" name="add_new_course">
                                                        <i class="fas fa-save"></i>
                                                        Save
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="tab-pane fade" id="organization" role="tabpanel" aria-labelledby="organization-tab">
                        <a class="btn btn-info mb-2 float-right mr-3" href="admin_votes.php">
                            Add new Vote
                        </a>

                        <table id="example" class="table table-striped table-bordered bg-white shadow" style="width:100%">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Category</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            require 'app/db.php';
                            $sql = "SELECT * FROM vote";
                            $res = mysqli_query($con, $sql);
                            while($row = mysqli_fetch_array($res)){
                                $rndom = rand();
                                ?>
                                <tr>
                                    <td>
                                        <?php echo $row["id"]; ?>
                                    </td>
                                    <td>
                                        <a href="" class="appColor"  data-toggle="modal" data-target="#editContact_<?php echo $rndom; ?>">
                                            <?php echo $row["name"]; ?>
                                        </a>
                                    </td>
                                    <td>
                                        <?php echo $row["cat"]; ?>
                                    </td>
                                    <td>
                                        <?php echo $row["date1"]; ?>
                                    </td>
                                    <td>
                                        <?php echo $row["date2"]; ?>
                                    </td>
                                    <td>
                                        <a href="" class="text-danger mr-1" data-toggle="modal" data-target="#editContact_<?php echo $rndom; ?>">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                    </td>
                                </tr>
                                <!-- Membership Modal -->
                                <div class="modal" id="editContact_<?php echo $rndom; ?>">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Edit Vote Details</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <form action="" method="POST">
                                                <!-- Modal body -->
                                                <div class="modal-body">
                                                    <input type="hidden" name="id" value="<?php echo $row["id"]; ?>">
                                                    <div class="form-group row">
                                                        <label for="EmailContent" class="col-sm-3 col-form-label">Name</label>
                                                        <div class="col-sm-12">
                                                            <input class="form-control" name="name" required="" value="<?php echo $row["name"]; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="EmailContent" class="col-sm-12 col-form-label">Start Date</label>
                                                        <div class="col-sm-12">
                                                            <input type="date" class="form-control" name="startdate" required="" value="<?php echo $row["date1"]; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="EmailContent" class="col-sm-12 col-form-label">End Date</label>
                                                        <div class="col-sm-12">
                                                            <input type="date" class="form-control" name="enddate" required="" value="<?php echo $row["date2"]; ?>">
                                                        </div>
                                                    </div>


                                                </div>

                                                <!-- Modal footer -->
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                                                    <button type="submit" class="btn btn-danger" name="update">Update</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            if(isset($_POST["update"])){
                                $id = $_POST["id"];
                                $name = $_POST["name"];
                                $startdate = $_POST["startdate"];
                                $enddate = $_POST["enddate"];

                                $sql = "UPDATE vote SET name='$name',  date1='$startdate', date2='$enddate'
                                         WHERE id = $id";
                                if(mysqli_query($con, $sql)){
                                    js_alert("Vote Updated!");
                                    js_redirect("./admin_votes.php");
                                }else{
                                    js_alert(mysqli_error($con));
                                }
                            }
                            ?>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Category</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Actions</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

      <!-- Add new category -->
      <div class="modal" id="addNewRoleModal">
          <div class="modal-dialog">
              <div class="modal-content">

                  <form action="" method="POST">
                      <div class="modal-header">
                          <h4 class="modal-title">Add New Role</h4>
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                          <div class="form-group">
                              <label for="exampleInputPassword1">Role Name</label>
                              <input type="text" class="form-control" name="role" placeholder="New Role Name">
                          </div>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                          <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                          <button class="btn btn-danger" type="submit" name="add_newRole">Add</button>
                      </div>
                  </form>
                  <?php
                  if(isset($_POST["add_newRole"])){
                      $name = $_POST["role"];
                      $sql = "INSERT INTO committee_roles (role) VALUES ('$name')";
                      if(mysqli_query($con, $sql)){
                          js_alert("Role was added!");
                          js_redirect("./admin_committees.php");
                      }
                  }
                  ?>
              </div>
          </div>
      </div>


<?php
  require 'parts/footer.php';
?>


      <script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
      <script>
          $(document).ready(function() {
              $('#example').DataTable();
          } );
      </script>
</body>

</html>
