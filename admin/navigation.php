<!-- Begin page -->
        <div id="layout-wrapper">

            
            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box">
                            <a href="dashboard.php" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="assets/images/bigfund-logo.png" alt="" height="50" width="150">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/bigfund-logo.png" alt="" height="50" width="150">
                                </span>
                            </a>

                            <a href="dashboard.php" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="assets/images/bigfund-logo.png" alt="" height="50" width="150">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/bigfund-logo.png" alt="" height="50" width="150">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>

                        <!-- App Search-->
                        <form class="app-search d-none d-lg-block">
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="bx bx-search-alt"></span>
                            </div>
                        </form>
                       <!-- <div style="padding: 20px;margin:auto;margin-left:170px;text-align:center;font-weight:800;font-size:20px;background-image:linear-gradient(to bottom,#2A3042,red);color:#fff;font-family:Garamond;border-radius: 400%;"><?php echo $_SESSION['databasebranchname'];?></div> -->
                        <div class="dropdown dropdown-mega d-none d-lg-block ms-2">
                            <!-- <button type="button" class="btn header-item waves-effect" data-bs-toggle="dropdown" aria-haspopup="false" aria-expanded="false">
                                
                                <span key="t-megamenu">Mega Menu</span>
                                <i class="mdi mdi-chevron-down"></i> 
                            </button>
                            <div class="dropdown-menu dropdown-megamenu">
                                <div class="row">
                                    <div class="col-sm-8">
    
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h5 class="font-size-14 mt-0" key="t-ui-components">UI Components</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-lightbox">Lightbox</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-range-slider">Range Slider</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-sweet-alert">Sweet Alert</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-rating">Rating</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-forms">Forms</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-tables">Tables</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-charts">Charts</a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="col-md-4">
                                                <h5 class="font-size-14 mt-0" key="t-applications">Applications</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-ecommerce">Ecommerce</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-calendar">Calendar</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-email">Email</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-projects">Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-tasks">Tasks</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-contacts">Contacts</a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="col-md-4">
                                                <h5 class="font-size-14 mt-0" key="t-extra-pages">Extra Pages</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-light-sidebar">Light Sidebar</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-compact-sidebar">Compact Sidebar</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-horizontal">Horizontal layout</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-maintenance">Maintenance</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-coming-soon">Coming Soon</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-timeline">Timeline</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-faqs">FAQs</a>
                                                    </li>
                            
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <h5 class="font-size-14 mt-0" key="t-ui-components">UI Components</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-lightbox">Lightbox</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-range-slider">Range Slider</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-sweet-alert">Sweet Alert</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-rating">Rating</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-forms">Forms</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-tables">Tables</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" key="t-charts">Charts</a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="col-sm-5">
                                                <div>
                                                    <img src="assets/images/megamenu-img.png" alt="" class="img-fluid mx-auto d-block">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div> -->
                        </div>
                    </div>

                    <div class="d-flex">
                        <!--
                        <div class="dropdown d-inline-block d-lg-none ms-2">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="mdi mdi-magnify"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-search-dropdown">
        
                                <form class="p-3">
                                    <div class="form-group m-0">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>-->
                        <!--
                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item waves-effect"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img id="header-lang-img" src="assets/images/flags/us.jpg" alt="Header Language" height="16">
                            </button>
                            <!--
                            <div class="dropdown-menu dropdown-menu-end">

                                <!-- item--
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="en">
                                    <img src="assets/images/flags/us.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">English</span>
                                </a>
                                <!-- item--
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="sp">
                                    <img src="assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Spanish</span>
                                </a>

                                <!-- item--
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="gr">
                                    <img src="assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">German</span>
                                </a>

                                <!-- item--
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="it">
                                    <img src="assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Italian</span>
                                </a>

                                <!-- item--
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ru">
                                    <img src="assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Russian</span>
                                </a>
                            </div>--
                        </div>-->
                        <!--
                        <div class="dropdown d-none d-lg-inline-block ms-1">
                            <button type="button" class="btn header-item noti-icon waves-effect"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-customize"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                                <div class="px-lg-2">
                                    <div class="row g-0">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="assets/images/brands/github.png" alt="Github">
                                                <span>GitHub</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="assets/images/brands/bitbucket.png" alt="bitbucket">
                                                <span>Bitbucket</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="assets/images/brands/dribbble.png" alt="dribbble">
                                                <span>Dribbble</span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row g-0">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="assets/images/brands/dropbox.png" alt="dropbox">
                                                <span>Dropbox</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="assets/images/brands/mail_chimp.png" alt="mail_chimp">
                                                <span>Mail Chimp</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="assets/images/brands/slack.png" alt="slack">
                                                <span>Slack</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->

                        <div class="dropdown d-none d-lg-inline-block ms-1">
                            <button type="button" class="btn header-item noti-icon waves-effect" data-toggle="fullscreen">
                                <i class="bx bx-fullscreen"></i>
                            </button>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-notifications-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-bell bx-tada"></i>
                                <span class="badge bg-danger rounded-pill"></span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-notifications-dropdown">
                                <div class="p-3">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h6 class="m-0" key="t-notifications"> Notifications </h6>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#" class="small" key="t-view-all"> View All</a>
                                        </div>
                                    </div>
                                </div>
                                <div data-simplebar style="max-height: 230px;">
                                    <!--
                                    <a href="#" class="text-reset notification-item">
                                        <div class="media">
                                            <div class="avatar-xs me-3">
                                                <span class="avatar-title bg-primary rounded-circle font-size-16">
                                                    <i class="bx bx-cart"></i>
                                                </span>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="mt-0 mb-1" key="t-your-order">Your order is placed</h6>
                                                <div class="font-size-12 text-muted">
                                                    <p class="mb-1" key="t-grammer">If several languages coalesce the grammar</p>
                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-min-ago">3 min ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>-->
                                    <!--
                                    <a href="#" class="text-reset notification-item">
                                        <div class="media">
                                            <img src="assets/images/users/avatar-3.jpg"
                                                class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                            <div class="media-body">
                                                <h6 class="mt-0 mb-1">James Lemire</h6>
                                                <div class="font-size-12 text-muted">
                                                    <p class="mb-1" key="t-simplified">It will seem like simplified English.</p>
                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-hours-ago">1 hours ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>-->
                                    <!--
                                    <a href="#" class="text-reset notification-item">
                                        <div class="media">
                                            <div class="avatar-xs me-3">
                                                <span class="avatar-title bg-success rounded-circle font-size-16">
                                                    <i class="bx bx-badge-check"></i>
                                                </span>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="mt-0 mb-1" key="t-shipped">Your item is shipped</h6>
                                                <div class="font-size-12 text-muted">
                                                    <p class="mb-1" key="t-grammer">If several languages coalesce the grammar</p>
                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-min-ago">3 min ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>-->
                                    <!--
                                    <a href="#" class="text-reset notification-item">
                                        <div class="media">
                                            <img src="assets/images/users/avatar-4.jpg"
                                                class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                            <div class="media-body">
                                                <h6 class="mt-0 mb-1">Salena Layfield</h6>
                                                <div class="font-size-12 text-muted">
                                                    <p class="mb-1" key="t-occidental">As a skeptical Cambridge friend of mine occidental.</p>
                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-hours-ago">1 hours ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>-->
                                </div>
                                <!--
                                <div class="p-2 border-top d-grid">
                                    <a class="btn btn-sm btn-link font-size-14 text-center" href="javascript:void(0)">
                                        <i class="mdi mdi-arrow-right-circle me-1"></i> <span key="t-view-more">View More..</span> 
                                    </a>
                                </div>-->
                            </div>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?php
                            if(isset($staffpassport)){?>
                                <img class="rounded-circle header-profile-user" src="../admin/pictures/<?php echo $staffpassport;?>" alt="user image">
                               <?php } ?>
                                <span class="d-none d-xl-inline-block ms-1" key="t-henry"><?php echo $dbname;?></span>
                                <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <!-- item-->
                                <a class="dropdown-item" href="change-password.php"><i class="bx bx-user font-size-16 align-middle me-1"></i> <span key="t-profile">Change Password</span></a>
                                <!--<a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i> <span key="t-my-wallet">My Wallet</span></a>
                                <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span key="t-settings">Settings</span></a>
                                <a class="dropdown-item" href="#"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i> <span key="t-lock-screen">Lock screen</span></a>
                                <div class="dropdown-divider"></div>-->
                                <a class="dropdown-item text-danger" href="logout.php"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span key="t-logout">Logout</span></a>
                            </div>
                        </div>
                        <!--
                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                                <i class="bx bx-cog bx-spin"></i>
                            </button>
                        </div>-->

                    </div>
                </div>
            </header>

            <!-- ========== Left Sidebar Start ========== -->
            <!-- <div class="vertical-menu">

                <div data-simplebar class="h-100">

                    <!-- Sidemenu --
                    <div id="sidebar-menu">
                        <!-- Left Menu Start --
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title" key="t-menu">Menu</li>

                            <li>
                                <a href="dashboard.php" class="waves-effect">
                                    <i class="bx bx-home-circle"></i><!--<span class="badge rounded-pill bg-info float-end">04</span>--
                                    <span key="t-dashboards">Dashboards</span>
                                </a>
                                <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="fas fa-tools"></i>
                                    <span key="t-settings">Set Up</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                        
                                    <li><a href="jurisdiction.php" key="t-cart">Add Jurisdiction</a></li>
                                    <li><a href="#" key="t-cart">View Jurisdiction</a></li>
                                    <li><a href="add-group.php" key="t-cart">Add Group</a></li>
                                    <li><a href="viewgroup.php" key="t-cart">View Group</a></li>
                                    <li><a href="add-link.php" key="t-cart">Add Link</a></li>
                                    <li><a href="add-sublink.php" key="t-cart">Add Sub Link</a></li>
                                </ul>
                            </li>
                      
                            <!--Staff Creation--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bxs-user"></i>
                                    <span key="t-ecommerce">Staff</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                        
                                    <li><a href="add-staff.php" key="t-cart">Add Staff</a></li>
                                    
                                    <li><a href="view-staff.php" key="t-cart">View Staff</a></li>
                                </ul>
                            </li>
                            <!--Member Creation--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bxs-user-plus"></i>
                                    <span key="t-ecommerce">Member</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                        
                                    <li><a href="member-account.php" key="t-cart">Add Member</a></li>
                                    
                                    <li><a href="viewmember.php" key="t-cart">View Member</a></li>
                                </ul>
                            </li>
                            <!--Loans Creation--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-money"></i>
                                    <span key="t-ecommerce">Loans</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                         
                                    <li><a href="loanapp.php" key="t-cart">Apply for Loan</a></li>
                                    <li><a href="pendingloan-request.php" key="t-cart">Pending Loan Request</a>
                                    <li><a href="loan-history.php" key="t-cart">Loan History</a></li>
                                    </li>
                                </ul>
                            </li>
                            <!--Account--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="fas fa-fax"></i>
                                    <span key="t-ecommerce">Account</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                         
                                    <li><a href="initialdeposit.php" key="t-cart">Initial Deposit</a></li>
                                    
                                    <li><a href="loan-repayment.php" key="t-cart">Loan Repayment</a></li>
                                    <li><a href="confirmrepayment.php" key="t-cart">Confirm Repayment</a></li>
                                </ul>
                            </li>
                            <!--Loan Report--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="fas fa-receipt"></i>
                                    <span key="t-ecommerce">Reports</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                         
                                    <li><a href="viewloanaccount.php" target="_blank" key="t-cart">View Loan Accounts</a></li>
                                    
                            
                                </ul>
                            </li>
                            <li>
                                <a href="admin-profile.php">
                                    <i class="bx bx-user"></i>
                                    <span key="t-ecommerce">Profile</span>
                                </a>
                                
                            </li>
                            

                            <li>
                                <a href="logout.php">
                                    <i class="bx bx-power-off"></i>
                                    <span key="t-ecommerce">Logout</span>
                                </a>
                                
                            </li>
                            

                        </ul>
                    </div>
                    <!-- Sidebar --
                </div>
            </div> -->
            <!-- Left Sidebar End -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="vertical-menu">

                <div data-simplebar class="h-100">

                    <!-- Sidemenu -->
                    <div id="sidebar-menu" style="margin-top:20px;">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title" key="t-menu">Menu</li>

                            <li>
                                <a href="dashboard.php" class="waves-effect">
                                    <i class="bx bx-home-circle"></i><!--<span class="badge rounded-pill bg-info float-end">04</span>-->
                                    <span key="t-dashboards">Dashboards</span>
                                </a>
                                <?php
                            

                                    $linkquery = "SELECT * FROM link_tbl WHERE status='active'";
                                    $linkqueryres = mysqli_query($conn,$linkquery) or die($linkquery);
                                    while($linkdata = mysqli_fetch_assoc($linkqueryres)){
                                        $linkid = $linkdata['link_id'] ;
                                        $linkname = $linkdata['link_name'] ;
                                        $linkicon = $linkdata['link_icon'] ;
                                ?>
                                <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="<?php echo $linkicon;?>"></i>
                                    <span key="t-settings"><?php echo $linkname;?></span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <?php
                                    $sublinkquery = "SELECT * FROM sublink_tbl inner join link_useraccess on link_useraccess.sublink_id = sublink_tbl.sublink_id WHERE  sublink_tbl.status='active' AND sublink_tbl.link_id='$linkid' AND link_useraccess.user_permission='True' AND link_useraccess.user_id='$id' ORDER BY sublink_tbl.sublink_name ASC";
                                    $sublinkqueryres = mysqli_query($conn,$sublinkquery)or die($sublinkquery);
                                    while($sublinkdata = mysqli_fetch_assoc($sublinkqueryres)){

                                        $sublinkname = $sublinkdata['sublink_name'] ;
                                        $sublinkurl = $sublinkdata['sublink_url'] ;
                                        if($sublinkurl=='viewloanaccount.php'){
                                            $targeturl = '_blank';
                                        }else{
                                            $targeturl = "";
                                        }
                                    ?>
                                    <li><a href="<?php echo  $sublinkurl;?>" target="<?php echo $targeturl;?>" key="t-cart"><?php echo $sublinkname;?></a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                            <?php }  ?>
                            <!--Staff Creation--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bxs-user"></i>
                                    <span key="t-ecommerce">Staff</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                        
                                    <li><a href="add-staff.php" key="t-cart">Add Staff</a></li>
                                    
                                    <li><a href="view-staff.php" key="t-cart">View Staff</a></li>
                                </ul>
                            </li>
                            <!--Member Creation--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bxs-user-plus"></i>
                                    <span key="t-ecommerce">Member</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                        
                                    <li><a href="member-account.php" key="t-cart">Add Member</a></li>
                                    
                                    <li><a href="viewmember.php" key="t-cart">View Member</a></li>
                                </ul>
                            </li>
                            <!--Loans Creation--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-money"></i>
                                    <span key="t-ecommerce">Loans</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                         
                                    <li><a href="loanapp.php" key="t-cart">Apply for Loan</a></li>
                                    <li><a href="pendingloan-request.php" key="t-cart">Pending Loan Request</a>
                                    <li><a href="loan-history.php" key="t-cart">Loan History</a></li>
                                    </li>
                                </ul>
                            </li>
                            <!--Account--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="fas fa-fax"></i>
                                    <span key="t-ecommerce">Account</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="initialdeposit.php" key="t-cart">Initial Deposit</a></li>
                                    
                                    <li><a href="loan-repayment.php" key="t-cart">Loan Repayment</a></li>
                                    <li><a href="confirmrepayment.php" key="t-cart">Confirm Repayment</a></li>
                                </ul>
                            </li>
                            <!--Loan Report--
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="fas fa-receipt"></i>
                                    <span key="t-ecommerce">Reports</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                         
                                    <li><a href="viewloanaccount.php" target="_blank" key="t-cart">View Loan Accounts</a></li>
                                    
                            
                                </ul>
                            </li>-->
                            <!-- <li>
                                <a href="jlms-user-manual.pdf" target="_blank">
                                    <i class="fas fa-book-reader"></i>
                                    <span key="t-ecommerce">User Manual</span>
                                </a>
                            </li> -->

                            <li>
                                <a href="backup.php">
                                    <i class="bx bx-data"></i>
                                    <span key="t-ecommerce">BackUp</span>
                                </a>
                                
                            </li>

                            <li>
                                <a href="logout.php">
                                    <i class="bx bx-power-off"></i>
                                    <span key="t-ecommerce">Logout</span>
                                </a>
                                
                            </li>
                            

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
            <!-- Left Sidebar End -->
