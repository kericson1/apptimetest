<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/font-awesome.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/line-awesome.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/select2.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap-datetimepicker.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/plugins/datetimepicker/css/tempusdominus-bootstrap-4.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/plugins/summernote/dist/summernote-bs4.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/fullcalendar.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
</head>
<body>
<div id="dashboad">
    <router-view></router-view>
</div>
<script src="{{ asset('js/dashboad.js') }}"></script>
<script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>

<script>
    $('input[name|="type_projet"]').change(function () {

        if ($(this).val() == 'MISSION') {
            $('#client').fadeIn(0, function () {

                $(this).delay(500).animate({backgroundColor: "white"}, 1000);

            });

        } else {

            $('#client').css('background-color', '#efefef');
            $('#client').fadeOut(0);
        }


    });
    $(document).ready(function () {
        $(".cache").click(function () {
            $("#chef").hide();
            $("#membre").hide();
        });
        $(".addjustify").click(function () {
            $(".justificatif").show();
            $(".addjustify").hide();
            $(".closejustify").show();
        });
        $(".closejustify").click(function () {
            $(".justificatif").hide();
            $(".addjustify").show();
            $(".closejustify").hide();
        });
    });
</script>


<script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>

<script src="{{ asset('assets/js/jquery.slimscroll.min.js') }}"></script>

<script src="{{ asset('assets/plugins/apexcharts/apexcharts.min.js') }}"></script>
<script src="{{ asset('assets/js/chart.js') }}"></script>

<script src="{{ asset('assets/js/select2.min.js') }}"></script>

<script src="{{ asset('assets/js/moment.min.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap-datetimepicker.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datetimepicker/js/tempusdominus-bootstrap-4.min.js') }}"></script>

<script src="{{ asset('assets/plugins/summernote/dist/summernote-bs4.min.js') }}"></script>

<script src="{{ asset('assets/js/jquery-ui.min.js') }}"></script>
<script src="{{ asset('assets/js/fullcalendar.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery.fullcalendar.js') }}"></script>

<script src="{{ asset('assets/js/app.js') }}"></script>
</body>
</html>
