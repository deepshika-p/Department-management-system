<?php
    
    include('dbCon.php');
    require_once 'admin_session.php';
    
    if (isset($_POST['submit'])) {
        if ((!file_exists($_FILES['report']['tmp_name']) || !is_uploaded_file($_FILES['report']['tmp_name'])) || (!file_exists($_FILES['code']['tmp_name']) || !is_uploaded_file($_FILES['code']['tmp_name'])) || (!file_exists($_FILES['cert']['tmp_name']) || !is_uploaded_file($_FILES['cert']['tmp_name']))) {
            Print '<script>alert("Please Select A File!");</script>';
        } else {
            
            $usn=$_POST['usn'];
            $course_code=$_POST['course_code'];
            $title=$_POST['title'];
            $loc=$_POST['loc'];
            $cert = explode('.', $_FILES['cert']['name']);
            $cert_ext = end($cert);
            $rep = explode('.', $_FILES['report']['name']);
            $rep_ext = end($rep);
            $code = explode('.', $_FILES['code']['name']);
            $code_ext = end($code);
            
            
            move_uploaded_file($_FILES['report']['tmp_name'],"project/report/".$usn."_".$course_code.".".$rep_ext);
            move_uploaded_file($_FILES['cert']['tmp_name'],"project/certificate/".$usn."_".$course_code.".".$cert_ext);
            move_uploaded_file($_FILES['code']['tmp_name'],"project/code/".$usn."_".$course_code.".".$code_ext);
            
            
            $sqlInsertIntoDB = "INSERT INTO `projects`(`USN`, `Course_Code`, `Title`, `proj_loc`) VALUES ('$usn','$course_code','$title','$loc')";
            if (mysqli_query($conn, $sqlInsertIntoDB)) {
                Print '<script>alert("Details uploaded successfully.");</script>';
                Print '<script>window.location.assign("index.php");</script>';
            } else {
                echo "<br />Failed to upload.<br />";
            }
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
<title>Project</title>
</head>
<body class="d-flex flex-column" id="body-pd">
    <?php include "header.php";?>
    <main class="flex-shrink-0">
      <?php include "sidebar.php";?>
        <section class="py-5">
            <div class="container px-5">
                <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Add Project Details</h1>
                    </div>
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <form action="" method="post" enctype="multipart/form-data">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="p1" type="text" name="usn" maxlength="10" required/>
                                    <label for="usn">USN</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="p2" type="text" name="title" required/>
                                    <label for="title">Title</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="p3" type="text" name="course_code" maxlength="10"/>
                                    <label for="course_code">Course Code</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="p4" type="text" name="loc"/>
                                    <label for="loc">Project Location</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" id="p5" name="desc"></textarea>
                                    <label for="desc">Description</label>
                                </div>
 				<div class="form-floating mb-3">
                                    <input class="form-control" type="file" name="code" required/>
                                    <label for="code">Code</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" type="file" name="report" required/>
                                    <label for="report">Report</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" type="file" name="cert" required/>
                                    <label for="cert">Certificate</label>
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