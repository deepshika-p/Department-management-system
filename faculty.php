<?php
    
    include('dbCon.php');
    require_once 'admin_session.php';
    
    if (isset($_POST['submit'])) {
        $dep_id=$_POST['dep_id'];
        $emp_id=$_POST['emp_id'];
	$title=$_POST['title'];
        $fname=$_POST['fname'];
	$mname=$_POST['mname'];
        $lname=$_POST['lname'];
	$designation=$_POST['designation'];
        $qualifications=$_POST['qualifications'];
        $phone=$_POST['phone'];
        $email=$_POST['email'];
        $address=$_POST['address'];
        
        $sqlInsertIntoDB = "INSERT INTO `faculty`(`dep_id`, `fid`, `title`, `fname`, `m_init`, `lname`, `designation`, `qualifications`, `phone`, `email`, `address`) VALUES ('$dep_id','$emp_id','$title','$fname','$mname','$lname','$designation','$qualifications','$phone','$email','$address')";
        
        if (mysqli_query($conn, $sqlInsertIntoDB)) {
            Print '<script>alert("Details uploaded successfully.");</script>';
            Print '<script>window.location.assign("index.php");</script>';
        } else {
            echo "<br />Failed to upload.<br />";
        }
        
    }
    else {
        
    }
    
    //Close the connection
    if (mysqli_close($conn)) {
        //echo "<br />Connection Closed.";
    }
    ?>

<head>
<title>Faculty</title>
</head>
<body class="d-flex flex-column" id="body-pd">
    <?php include "header.php";?>
    <main class="flex-shrink-0">
      <?php include "sidebar.php";?>
        <section class="py-5">
            <div class="container px-5">
                <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Enter Faculty Details</h1>
                    </div>
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <form action="" method="post" enctype="multipart/form-data">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s1" type="text" name="dep_id" required />
                                    <label for="dep_id">Department ID</label>
                                </div>
				<div class="form-floating mb-3">
                                    <input class="form-control" id="s2" type="text" name="emp_id" required />
                                    <label for="emp_id">Faculty ID</label>
                                </div>
				<div class="form-floating mb-3">
                                    <input class="form-control" id="s3" type="text" name="title" required />
                                    <label for="title">Title</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s4" type="text" name="fname" required/>
                                    <label for="fname">First Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s5" type="text" name="mname"/>
                                    <label for="mname">Middle Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s6" type="text" name="lname"/>
                                    <label for="lname">Last Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s7" type="date" name="designation" required/>
                                    <label for="designation">Designation</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s8" type="text" name="qualifications"/>
                                    <label for="qualifications">Qualifications</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s9" type="text" name="phone" />
                                    <label for="phone">Phone</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s10" type="text" name="email" />
                                    <label for="email">Email</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="s11" type="text" name="address"/>
                                    <label for="address">Address</label>
                                </div>
                                <div class="d-none" id="submitErrorMessage">
                                    <div class="text-center text-danger mb-3">Error!</div>
                                </div>
                                <!-- Submit Button-->
                                <div class="d-grid"><button class="btn btn-primary btn-lg" type="submit" name="submit"
                                        value="Upload">Submit</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>