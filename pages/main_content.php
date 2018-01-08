<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 align="center">
        <u style="font-family: 'Metamorphous', cursive;">Attendance System</u>
        <small>Online</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <!-- row -->
      <div class="row">
        <div class="col-md-12">
          <!-- The time line -->
          




<hr />
  
  <ul class="timeline">
  <!-- timeline time label -->

  <?php
    $sql_course = "SELECT course_id, course_name, course_code FROM courses WHERE is_status = 0";
    $result_course = mysqli_query($conn, $sql_course);
  ?>
  <?php

    if (mysqli_num_rows($result_course) > 0) {
        // output data of each row
        while($row_course = mysqli_fetch_assoc($result_course)) {
            ?>
                        <li class="time-label">
                        
                  <span class="bg-red" style="font-size: 20px;"  ">
            <?php
           
            //echo "Course id: " . $row_course["course_id"]. " - Course Name: " . $row_course["course_name"]. " - Course Code: " . $row_course["course_code"];
            echo "Course Name: " . $row_course["course_name"];
  ?>
            </span>
            <!-- /.timeline-label -->
            <!-- timeline item -->
    <ul>
      <?php
        $sql_batch = "SELECT batch_id, batch_name, batch_course_id FROM batches WHERE batch_course_id = {$row_course["course_id"]} AND is_status = 0";
        $result_batch = mysqli_query($conn, $sql_batch);
      ?>

    

      <?php
            if (mysqli_num_rows($result_batch) > 0) {
          // output data of each row
            while($row_batch = mysqli_fetch_assoc($result_batch)) {
                ?>
                

<li>
    <div class="timeline-item">

            
                    <h3 class="timeline-header label-info" style="font-size: 20px;"><b>
                <?php
                
                //echo "Batch id: " . $row_batch["batch_id"]. " - Batch Name: " . $row_batch["batch_name"]. " - Course ID: " . $row_batch["batch_course_id"];
                echo "Batch Name: " . $row_batch["batch_name"];
          ?>
          </b></h3>

          <div class="timeline-body" style="background-color: white;">

                      <h4 style="font-family:'Vollkorn', serif"><u><i class="fa fa-arrow-circle-right" aria-hidden="true" style="padding: 5px;"></i>Sections</u></h4>

        <ol>
          <?php
            $sql_section = "SELECT section_id, section_name, section_batch_id FROM section WHERE section_batch_id = {$row_batch["batch_id"]} AND is_status = 0";
            $result_section = mysqli_query($conn, $sql_section);
          ?>
          <?php
            if (mysqli_num_rows($result_section) > 0) {
                // output data of each row
                while($row_section = mysqli_fetch_assoc($result_section)) {
                  ?>


                  <li class="sec">
                  <a href="select_date.php?section_id=<?php echo $row_section['section_id']; ?>" style="font-family:'Old Standard TT', serif;">


                  <?php

                  //echo "Section id: " . $row_section["section_id"]. " - Section Name: " . $row_section["section_name"]. " - Batch ID: " . $row_section["section_batch_id"];
                    echo "Section Name: " . $row_section["section_name"];
          ?>
          </a>
          <span class="label-success" style="padding: 1px;">Marked</span>
          </li>
            <?php
                }
            } else {
                echo "0 results";
            }
            ?>
        </ol>
        </div>
      </div>
      </li>
      <?php
          }
        } else {
          echo "0 results";
        }
      ?>
    </ul>
  </li>
  <?php
        }
    } else {
      echo "0 results";
    }
  ?>
  <li>
              <i class="fa fa-clock-o bg-gray"></i>
            </li>
</ul>

<hr />


        </div>
            </li>
        </div>
            <!-- END timeline item -->
            <!-- timeline time label -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->