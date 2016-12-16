

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top {{if {page.path_part} != 'zesty_home'}}always-dark{{end-if}}">
    
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            {{if {clippings.logo} }}
            <a class="navbar-brand brand-image page-scroll pull-left" href="/"><img src="{{clippings.logo.getImage()}}" alt="{{clippings.site_name}} logo"/></a>
            {{else}}
            <a class="navbar-brand page-scroll  pull-left" href="/">{{clippings.site_name}}</a>
            {{end-if}}
        </div>
        <a class="btn btn-primary pull-right" id="request" href="https://dashboard.petdesk.com/WebApptRequest/?referralCode={{ clippings.petdesk_ref_code }}" target="_blank" >Request Appointment</a>
        <div class="number text-center" >
            <h6 class="hidden-sm-down" >Call Now:</h6>
            <h3><a href="tel:{{ clippings.phone }}" >{{ clippings.phone }}</a></h3>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <!-- /.navbar-collapse -->
    </div>
    <div class="nav-bar" >
        <div class="container" >
            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
                {{bootstrap.navigation(nav navbar-nav,2)}}
                
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</nav>
<script>
    //$('.dropdown-toggle').attr('data-toggle','dropdown');
</script>
