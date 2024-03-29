<?php require_once('views/admin/metadata.php'); ?>
<div class="dashboard">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.html"><img class="logo_icon img-responsive" src="public/images/logo/logo_nike.png" alt="#" /></a>
                     </div>
                  </div>

                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="public/images/logo/logo_icon.png" alt="#" /></div>
                        <div class="user_info">
                           <h6>Hi admin!</h6>
                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>General</h4>
                  <ul class="list-unstyled components">
                     <li><a href="index.php?page=admin&controller=admin&action=index"><i class="fa fas fa-street-view white_color"></i> <span>Admin</span></a></li>
                     <li><a href="index.php?page=admin&controller=user&action=index"><i class="fa fa-user white_color"></i> <span>User</span></a></li>
                     <li><a href="index.php?page=admin&controller=products&action=index"><i class="fa fa-tag white_color"></i> <span>Products</span></a></li>
                     <li><a href="index.php?page=admin&controller=comments&action=index"><i class="fa fa-comment white_color"></i> <span>Comment</span></a></li>
                     <li><a href="index.php?page=admin&controller=news&action=index"><i class="fa fa-rss white_color"></i> <span>News</span></a></li>
                  </ul>
               </div>
            </nav>
            <!-- end sidebar -->
            <div id="content">
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
                        <button type="button" class="sidebar_toggle"><a href="index.php?page=admin&controller=home&action=index"><i class="fa fa-home"></i></a></button>
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul class="mr-3">
                                 <li class="mx-1"><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>                                 
                                 <li class="mx-1"><a href="#"><i class="fa fa-envelope-o"></i><span class="badge">1</span></a></li>
                                 <li class="mx-1"><a href="#"><i class="fa fa-question-circle"></i></a></li>
                                 <li class="mx-1">
                                    <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user fa-lg" style="color: white"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                       <a class="dropdown-item text-dark" href="index.php?page=admin&controller=login&action=index"><span>Log Out</span> <i class="fa fa-sign-out"></i></a>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               