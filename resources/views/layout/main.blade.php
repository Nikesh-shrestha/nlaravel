<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Karmanta - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Karmanta, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Karmanta - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="{{URL::asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href=" {{ URL::asset('css/bootstrap-theme.css') }} " rel="stylesheet">

     <!-- {{ URL::asset('css/owl.carousel.css') }} -->
    <!--external css-->
    <!-- font icon -->
    <link href="{{ URL::asset('css/elegant-icons-style.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/font-awesome/css/font-awesome.css')}}"  rel="stylesheet"  />    
    <!-- full calendar css-->
    <link href="{{ URL::asset('assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css') }}"  rel="stylesheet"/>
    <!-- easy pie chart-->
    <link href="{{ URL::asset('assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css') }}" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="{{ URL::asset('css/owl.carousel.css') }}" type="text/css">

    <!-- Custom styles -->
    <link href="{{ URL::asset('css/style.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('css/style-responsive.css') }}" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
      <!-- header and sidebar -->
      <header class="header white-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
        </div>

        <!--logo start-->
        <a href="index.html" class="logo">Karm<span>anta</span> <span class="lite">Lite</span></a>
        <!--logo end-->


        <div class="top-nav notification-row">                
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="username">Nikesh shrestha</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="#"><i class="icon_profile"></i> My Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                        </li>
                        <li>
                            <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
      </header>      
            <!--header end-->

            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">                
                        <li class="active">
                            <a class="" href="index.html">
                                <i class="icon_house_alt"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="">
                            <a class="" href=" {{URL::to('articles')}} ">
                                <i class="icon_house_alt"></i>
                                <span>Article</span>
                            </a>
                        </li>
                        <!-- <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>UI Kit</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
      
                        </li>
                        <li>
                            <a class="" href="widgets.html">
                                <i class="icon_genius"></i>
                                <span>Widgets</span>
                            </a>
                        </li>
                        <li class="sub-menu">                     
                            <a href="javascript:;" class="">
                                <i class="icon_piechart"></i>
                                <span>Charts</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="chart-chartjs.html">ChartJs</a></li>
                            </ul>                      
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_document_alt"></i>
                                <span>Form Stuff</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="form_component.html">Form Components</a></li>                          
                                <li><a class="" href="form_validation.html">Form Validation</a></li>
                            </ul>
                        </li>                  
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_table"></i>
                                <span>Tables</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="basic_table.html">Basic Table</a></li>
                            </ul>
                        </li>
                        
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_documents_alt"></i>
                                <span>Pages</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">                          
                                <li><a class="" href="profile.html">Profile</a></li>
                                <li><a class="" href="login.html"><span>Login Page</span></a></li>
                                <li><a class="" href="blank.html">Blank Page</a></li>
                                <li><a class="" href="404.html">404 Error</a></li>
                            </ul>
                        </li> -->
                        
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
      <!-- header and sidebar end-->
      
      <!--main content start-->
      @yield('content');
      <!-- main content ends here -->
  </section>
  <!-- container section start -->

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js" ></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>

  <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  

    <script src="{{URL::to('js/jquery.js')}}"></script>
    <script src="{{URL::to('js/bootstrap.min.js')}}"></script>
    <!-- nice scroll -->
    <!-- <script src="{{URL::to('js/jquery.scrollTo.min.js')}}"></script>
    // <script src="{{URL::to('js/jquery.nicescroll.js')}}" type="text/javascript"></script> -->

    <!-- jquery ui -->
    <script src="{{URL::to('js/jquery-ui-1.9.2.custom.min.js')}}"></script>

    <!--custom checkbox & radio-->
    <!-- <script type="text/javascript" src="{{URL::to('js/ga.js')}}"></script>
    // custom switch
    // <script src="{{URL::to('js/bootstrap-switch.js')}}"></script> -->
    <!--custom tagsinput-->
    <script src="{{URL::to('js/jquery.tagsinput.js')}}"></script>
    
    <!-- colorpicker -->
    // <!-- <script type="text/javascript" src="{{URL::to('assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js')}}"></script>
    // <!-- bootstrap-datepicker -->
    // <script type="text/javascript" src="{{URL::to('assets/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
    // <script type="text/javascript" src="{{URL::to('assets/bootstrap-daterangepicker/date.js')}}"></script>
    // <script type="text/javascript" src="{{URL::to('assets/bootstrap-daterangepicker/daterangepicker.js')}}"></script>    --> 
    <!-- bootstrap-wysiwyg -->
    <script src="{{URL::to('js/jquery.hotkeys.js')}}"></script>
    // <script src="{{URL::to('js/bootstrap-wysiwyg.js')}}"></script>
    // <script src="{{URL::to('js/bootstrap-wysiwyg-custom.js')}}"></script>
    <!-- ck editor -->
    <script type= "text/javascript" src="{{URL::to('assets/ckeditor/ckeditor.js')}}"></script>
    <!-- custom form component script for this page-->
    <script src="{{URL::to('js/form-component.js')}}"></script>
    <!-- custome script for all page -->
    <script src="{{URL::to('js/scripts.js')}}"></script>

  </body>
</html>
