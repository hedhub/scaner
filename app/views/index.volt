{{ partial('layouts/head') }}

    <!DOCTYPE html>
    <html>

    {#{{ partial('layouts/head') }}#}
    <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="#" class="logo">
                <span class="logo-mini"><b></b></span>
                <span class="logo-lg"><b></b> </span>
            </a>
            {{ partial('layouts/nav') }}
        </header>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            {{ content() }}
        </div>

    <script src="/components/jquery/dist/jquery.min.js"></script>
    <script src="/components/jquery-ui/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="/components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="/components/admin-lte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/components/admin-lte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/components/jquery-knob/dist/jquery.knob.min.js"></script>
    <script src="/components/moment/min/moment.min.js"></script>
    <script src="/components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="/components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="/components/admin-lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="/components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="/components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="/components/admin-lte/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="/components/admin-lte/dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/components/admin-lte/dist/js/demo.js"></script>
    </body>
    </html>





