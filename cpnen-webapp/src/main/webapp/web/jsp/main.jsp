<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
    <link rel="stylesheet"
          href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.9.0/bootstrap-table.css">

    <link rel="stylesheet"
          href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.css">

    <link href="../css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../css/side-nav.css">

    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script
            src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.js"></script>

    <script
            src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/bootstrap-table.js"></script>
    <script
            src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/locale/bootstrap-table-en-US.js"></script>


    <script src="../js/moment.js"></script>
    <script src="../js/bootstrap-datetimepicker.min.js"></script>
    <style>
        body {
            overflow-x: hidden;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-fixed-top" role="navigation"
     style="background-color: #3fc1be">
    <div class="navbar-header">
        <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span> <span
                class="icon-bar"></span> <span class="icon-bar"></span> <span
                class="icon-bar"></span>
        </button>

        <img src="../images/portea.png" width="200" onclick="hideOthers(4)"
             style="padding-top: 10px; margin-left: 10px;">

    </div>


    <div class="nav navbar-right top-nav">
        <form name="logoutForm" method="POST" action="logout">
            <button type="submit" class="navbar navbar-left btn btn-danger"
                    title="log out from current account"
        style="text-align: center; margin-top: 10px; right: 100px; left: -50px;">
        Logout&nbsp;&nbsp;<span class="glyphicon glyphicon-adjust"></span>
        </button>
        </form>

    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav"
            style="background-color: #3fc1be; top: 81px">
            <li><a href="#" data-toggle="collapse" data-target="#demo"
                   id="SysConfig"> <strong style="color: #ffffff">Manage
                Coupons <i class="glyphicon glyphicon-cog gly-spin"></i>
            </strong></a>
                <ul id="demo" class="collapse">
                    <li>
                        <button class="btn btn-link" id="create_new_coupon" onclick="hideOthers(0)"
                                title=" Create new coupons from here"
                                style="padding-right: 70px; border-left-width: 1px; padding-left: 15px; text-decoration: none; color: #ffffff">
                            Create
                            coupons
                        </button>
                    </li>
                    <li>
                        <button class="btn btn-link" onclick="hideOthers(1)"
                                title=" List coupons from here"
                                style="padding-right: 70px; border-left-width: 1px; padding-left: 15px; text-decoration: none; color: #ffffff">
                            List
                            coupons
                        </button>
                    </li>
                    <li>
                        <button class="btn btn-link" onclick="hideOthers(2)"
                                title=" manage coupon codes from here"
                                style="padding-right: 70px; border-left-width: 1px; padding-left: 15px; text-decoration: none; color: #ffffff">
                            List
                            coupon codes
                        </button>
                    </li>

                </ul>
            </li>
        </ul>
    </div>
</nav>

<br><br><br><br>

<div id="page-wrapper" style="padding-left: 200px">
    <div class="row">
        <div class="col-md-8 col-md-offset-1">
            <br><br>

            <div id="statusBar"></div>
            <div id="createCoupon" hidden></div>

            <div id="showCoupons" hidden></div>
            <div id="listCouponCodes" hidden></div>

            <div id="viewCreatedCoupon" hidden>
                <br><br>
            </div>

            <div id="editCoupon" hidden>

            </div>

            <div id="statusInfo">

                <br><br>

                <h2>
                    <div id="infoPageId">
                        <h2>
                            Hi. Welcome to coupon management website.
                        </h2>
                    </div>
                </h2>
            </div>
            <div id="createCode" hidden></div>
        </div>
    </div>


</div>


<script src="../js/divManipulation.js"></script>
<script src="../js/extract_create_json.js"></script>
<script src="../js/extract_edit_json.js"></script>

<script src="../js/listCouponTable.js"></script>

<script src="../js/json-util.js"></script>

<script src="../js/coupon-validation.js"></script>

<script src="../js/coupon-operation.js"></script>

<%--<script src="../js/>--%>

<script>
    $(document).ready(function () {
        $.get("create.jsp", function (data) {
            $("#createCoupon").append(data);
            $.get("mapping.jsp", function (data) {
                $("#couponMapping").append(data);
            });
        });
        $.get("listCoupon.jsp", function (data) {
            $("#showCoupons").append(data);
        });
        $.get("listCouponCode.jsp", function (data) {
            $("#listCouponCodes").append(data);
        });


    });
    function hideOthers(id) {
        var arr = ["createCoupon", "showCoupons", "listCouponCodes", "viewCreatedCoupon", "statusInfo", "editCoupon", "createCode"];
        for (var i = 0; i < arr.length; i++) {
            if (i == id) {
                $("#" + arr[i]).show();
                continue;
            }
            $("#statusBar").empty();
            $("#" + arr[i]).hide();
        }
    }
    function editOthers(id) {
        var arr = ["editCouponAttributes", "editCouponMapping", "editCouponRules"];
        for (var i = 0; i < arr.length; i++) {
            if (i == id) {
                $("#" + arr[i]).show();
                continue;
            }
            $("#" + arr[i]).hide();
        }
    }
    function showOthers(id) {
        var arr = ["couponAttributes", "couponMapping", "couponRules"];
        for (var i = 0; i < arr.length; i++) {
            if (i == id) {
                $("#" + arr[i]).show();
                continue;
            }
            $("#" + arr[i]).hide();
        }
    }


    function checkDicountType() {
        var choice = $("#ruleType").val();
        if (choice == "FLAT") {
            $("#percent").prop("disabled", true);
            $("#flatAmount").prop("disabled", false);
        } else {
            $("#flatAmount").prop("disabled", true);
            $("#percent").prop("disabled", false);
        }
    }
</script>
</body>
</html>