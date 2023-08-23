<div class="sticky-header header-section ">
      <div class="header-left">
        <!--toggle button start-->
        <!-- <button id="showLeftPush"><i class="fa fa-bars"></i></button> -->
        <!--toggle button end-->
        <!--logo -->
        <div class="logo">
          <a href="index.html">
            <h1>ODABS</h1>
            <span>Panel</span>
          </a>
        </div>
        <!--//logo-->
       
       
        <div class="clearfix"> </div>
      </div>
      <div class="header-right">
        <div class="profile_details_left"><!--notifications of menu start -->
         
        </div>
        <!--notification menu end -->
        <div class="profile_details">  
        <?php
$adid=$_SESSION['ODABSaid'];
$ret=mysqli_query($con,"select AdminName from tbladmin where ID='$adid'");
$row=mysqli_fetch_array($ret);
$name=$row['AdminName'];

?> 
          <ul>
            <li class="dropdown profile_details_drop">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                <div class="profile_img"> 
                  <span class="prfil-img"><img src="images/download (1).png" alt="" width="50" height="50"> </span> 
                  <div class="user-name">
                    <p><?php echo $name; ?></p>
              
                  </div>
                  <i class="fa fa-angle-down lnr"></i>
                  <i class="fa fa-angle-up lnr"></i>
                  <div class="clearfix"></div>  
                </div>  
              </a>
              <ul class="dropdown-menu drp-mnu">
            
                <li> <a href="index.php"><i class="fa fa-sign-out"></i> Logout</a> </li>
              </ul>
            </li>
          </ul>
        </div>  
        <div class="clearfix"> </div> 
      </div>
      <div class="clearfix"> </div> 
    </div>